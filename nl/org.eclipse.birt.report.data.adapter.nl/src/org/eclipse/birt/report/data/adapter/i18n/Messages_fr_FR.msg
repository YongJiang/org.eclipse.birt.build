# Localized messages for the DTE Engine. Messages here give 
# the text of Design Engine exceptions.

###########################################################
#for test only
Error.Msg001={0} introuvable dans {0}.

###########################################################

#load data engine factory exception
load.factory.error=Une erreur s'est produite lors du chargement de la g�n�ration de l'adaptateur de donn�es.

context.null.error=Le contexte de donn�es ne peut pas �tre nul.
context.invalidDesigntimeMethod=La m�thode ReportContext [{0}] ne peut �tre utilis�e que lors de l'ex�cution.

adaptor.invalid.mode=La valeur de mode {0} pour le contexte de l'adaptateur de donn�es n'est pas valide.
invalid.cache.option=La valeur de mode {0} pour le contexte de l'adaptateur de donn�es n'est pas valide.

datasource.null.error=Impossible de trouver les sources de donn�es du jeu de donn�es {0}".
datasource.exid.error=ID d'extension manquant dans la d�finition de la source de donn�es {0}.

datasethandle.null.error=DataSetHandle ne doit pas �tre nul.
datasethandle.invalidColumnIndex=L'index de colonne n'est pas valide.
adapter.invalid.datetimetype=Le type de donn�es dateheure "{0}" est incorrect.
adapter.invalid.aggregationfunctionname=The aggregation function {0} is invalid.

invalid.datetime.value=La valeur DateHeure "{0}" est incorrecte.
missing.join.condition=La condition de jointure entre le jeu de donn�es principal "{0}" et la dimension "{1}" du cube "{2}" est absente.
exception.error=Une exception s'est produite au cours du traitement. Pour plus de d�tails, consultez le message suivant :
invalid.level.expression=Le nom de niveau "{0}" est introuvable.
invalid.measure.expression=L'expression de mesure"{0}" ne peut pas �tre nulle.
invalid.data.type=Type de donn�es incorrect : {0}. 

cube.error.createhierarchy=Une erreur s''est produite lors de la cr�ation de la hi�rarchie : {0}.
cube.error.createdimension=Une erreur s''est produite lors de la cr�ation de la dimension : {0}.
cube.error.createmeasure=Une erreur s'est produite lors de la cr�ation de la mesure.
cube.error.datasetmiss=Le cube ne peut pas �tre cr�� car le jeu de donn�es correspondant est manquant.
cube.jointColumnNotInLevels=La colonne jointe "{0}" n'est pas d�finie en tant que champ cl� pour aucun niveau dans la dimension "{1}".
cube.unsupportedAggregationInBinding=Fonction TopN/BottomN dans la liaison "{0}" non prise en charge dans xTab.
