# Localized messages for the DTE Engine. Messages here give 
# the text of Design Engine exceptions.

###########################################################
#for test only
Error.Msg001={0}이(가) {0}에 없습니다.

###########################################################

#load data engine factory exception
load.factory.error=데이터 어댑터 팩토리 로드 중 오류가 발생했습니다.

context.null.error=데이터 컨텍스트는 널(null)이 될 수 없습니다.
context.invalidDesigntimeMethod=ReportContext 메서드 [{0}]은(는) 런타임에서만 사용될 수 있습니다.

adaptor.invalid.mode=데이터 어댑터 컨텍스트의 모드 값 {0}이(가) 잘못되었습니다.
invalid.cache.option=데이터 어댑터 컨텍스트의 모드 값 {0}이(가) 잘못되었습니다.

datasource.null.error=데이터 집합 "{0}"의 데이터 원본을 찾지 못했습니다.
datasource.exid.error=데이터 원본 정의에서 확장 ID가 누락되었습니다: {0}.

datasethandle.null.error=DataSetHandle은 널(null)이 될 수 없습니다.
datasethandle.invalidColumnIndex=잘못된 열 인덱스입니다.
adapter.invalid.datetimetype=날짜/시간 형식 "{0}"이(가) 잘못되었습니다.
adapter.invalid.aggregationfunctionname=The aggregation function {0} is invalid.

invalid.datetime.value=날짜/시간 값 "{0}"이(가) 잘못되었습니다.
missing.join.condition=기본 데이터 집합 "{0}"과 큐브 "{2}"의 차원 "{1}" 간의 조인 조건이 없습니다.
exception.error=처리 도중 예외가 발생했습니다. 자세한 내용은 다음 메시지를 참조하십시오.
invalid.level.expression=수준 이름 "{0}"을(를) 찾을 수 없습니다.
invalid.measure.expression=측정값 "{0}"의 측정값 식은 널(null)일 수 없습니다.
invalid.data.type=잘못된 데이터 형식: {0}. 

cube.error.createhierarchy=계층 생성 도중 {0} 오류가 발생했습니다.
cube.error.createdimension=차원 생성 도중 {0} 오류가 발생했습니다.
cube.error.createmeasure=측정값 생성 도중 오류가 발생했습니다.
cube.error.datasetmiss=관련된 데이터 집합이 없어 큐브를 생성할 수 없습니다.
cube.jointColumnNotInLevels=조인 열 "{0}"이(가) 차원 "{1}"에 있는 수준의 키 필드로 정의되지 않았습니다.
cube.unsupportedAggregationInBinding=바인딩 "{0}"의 TopN/BottomN 함수는 xTab에서 지원되지 않습니다.
