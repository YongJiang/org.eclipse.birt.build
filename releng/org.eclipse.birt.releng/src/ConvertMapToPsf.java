package org.eclipse.birt.releng.psfbuilder;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class ConvertMapToPsf {

	private File mapRoot = new File("../org.eclipse.birt.releng/maps");
	private BufferedWriter curOut = null;
	private BufferedWriter allOut = null;
	private final Map<String,String> reposLoc;

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		
		System.out.println("Start");
		// TODO Auto-generated method stub
		Map<String,String> rLoc = new HashMap();
		rLoc.put(":pserver:dev.eclipse.org:/cvsroot/birt", "BIRT_2_3_2_Branch");
		rLoc.put(":pserver:dev.eclipse.org:/cvsroot/datatools", "DTP_1_6_1_M1_20080725");
		
		ConvertMapToPsf converter = new ConvertMapToPsf(rLoc);
		try {
			
			converter.run();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println("Finish");

	}
	
	public ConvertMapToPsf(Map<String, String> reposLoc){
		this.reposLoc = reposLoc;
	}

	public void run() throws IOException {
		if (mapRoot == null || mapRoot.exists() == false) {
			System.out.println("NO MAP FILES");
		}
		File allFile = new File(mapRoot.getPath() + "/all_files.psf");
		if(allFile.exists() == false){
			allFile.createNewFile();
		}
		allOut = new BufferedWriter(new FileWriter(allFile));
		initOutFile(allOut);
		
		String[] mapFiles = mapRoot.list(new MapFilter());
		for (int i = 0; i < mapFiles.length; i++) {
			buildPsfFile(mapFiles[i]);
		}
		closeOutFile(allOut);

	}
	
	public void initOutFile (BufferedWriter oFile) throws IOException{
		oFile.write("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
		oFile.write("\n");
		oFile.write("<psf version=\"2.0\">");
		oFile.write("\n");
		oFile.write("<provider id=\"org.eclipse.team.cvs.core.cvsnature\">");
		oFile.write("\n");
	}
	
	public void closeOutFile (BufferedWriter oFile ) throws IOException{
		oFile.write("</provider>");
		oFile.write("\n");
		oFile.write("</psf>");
		oFile.write("\n");
		oFile.close();
	}

	public void buildPsfFile(String fileName) throws IOException {
		String inFile = mapRoot.getPath() + "/" + fileName;
		File mapFile = new File(inFile);
		if (mapFile.exists() == false) {
			System.out.println("No Map File " + mapRoot.getPath() + "/"
					+ fileName);
			return;
		}
		File outFile = new File(inFile.replace(".map", ".psf"));
		curOut = new BufferedWriter(new FileWriter(outFile));
		initOutFile(curOut);

		BufferedReader in = new BufferedReader(new FileReader(mapFile));

		while (true) {
			if (!in.ready())
				break;

			String line = in.readLine();
			String[] tokens = line.split("\\,");

			StringBuffer sb = new StringBuffer();
			if (tokens.length == 1 || line.indexOf("!***") > -1 || line.indexOf("GET") > 0) {
				if (tokens[0] != null && tokens[0].length() > 0) {
					sb.append("\t<!--");
					sb.append(line);
					sb.append("-->");
				}
			} else {

				sb.append("\t<project reference=\"1.0,");
				String version = (tokens[0]);
				version = version.substring(version.indexOf("=")+1);
				String srvr = tokens[1];
				srvr = srvr.replace("anonymous@dev", "dev");
				sb.append(srvr);
				sb.append(",");
				sb.append(tokens[3].trim());
				sb.append(",");
				String projName = tokens[3].substring(tokens[3].lastIndexOf("/")+1);
				sb.append(projName.trim());
				sb.append(",");
				/*
				for (int i = 1; i < tokens.length; i++) {
					sb.append(" ");
					sb.append(i);
					sb.append("=");
					sb.append(tokens[i]);
				}*/
				sb.append(getVersionFromMap(srvr));
				sb.append("\"/>");
			}
			writeOut(sb.toString());
			writeOut("\n");

		}
		in.close();
		closeOutFile(curOut);
	}
	
	private String getVersionFromMap(String srvrName){
		return this.reposLoc.get(srvrName);
	}
	
	public final void writeOut(String chars) throws IOException{
		if (curOut == null || allOut == null)
			throw new IOException("output writers not ready");
		
		curOut.write(chars);
		allOut.write(chars);
	}

	private final static class MapFilter implements FilenameFilter {
		private final String extension = ".map";

		public MapFilter() {
		}

		public boolean accept(File dir, String name) {
			return name.toLowerCase().endsWith(extension);
		}
	}

}