# Localized messages for the DTE Engine. Messages here give 
# the text of Design Engine exceptions.

###########################################################
#for test only
Error.Msg001={0} 在 {0} 中未找到。

###########################################################

#load data engine factory exception
load.factory.error=加载数据适配器的工厂时出错。

context.null.error=数据上下文不能为空。
context.invalidDesigntimeMethod=ReportContext 方法 [{0}] 只能用于运行时。

adaptor.invalid.mode=数据适配器上下文的模式值 {0} 无效。
invalid.cache.option=数据适配器上下文的选项值 {0} 无效。

datasource.null.error=找不到数据集“{0}”的数据源。
datasource.exid.error=数据源定义中缺少扩展 ID: {0}。

datasethandle.null.error=DataSetHandle 不能为空。
datasethandle.invalidColumnIndex=列索引无效。
adapter.invalid.datetimetype=日期时间类型“{0}”无效。
adapter.invalid.aggregationfunctionname=The aggregation function {0} is invalid.

invalid.datetime.value=日期时间值“{0}”无效。
missing.join.condition=主数据集“{0}”与多维数据集“{2}”中的维“{1}”之间的联接条件缺失。
exception.error=处理过程中出错。有关详情，请参阅下列消息:
invalid.level.expression=找不到级别名称“{0}”。
invalid.measure.expression=度量“{0}”的度量表达式不能为空。
invalid.data.type=无效数据类型: {0}。 

cube.error.createhierarchy=创建层次结构时出现错误: {0}。
cube.error.createdimension=创建维时出现错误: {0}。
cube.error.createmeasure=创建度量时出现错误。
cube.error.datasetmiss=由于缺少相关数据集，无法创建多维数据集。
cube.jointColumnNotInLevels=联接列“{0}”未定义为维“{1}”中任何级别的关键字字段。
cube.unsupportedAggregationInBinding=xTab 中不支持绑定“{0}”中的 TopN/BottomN 函数。
