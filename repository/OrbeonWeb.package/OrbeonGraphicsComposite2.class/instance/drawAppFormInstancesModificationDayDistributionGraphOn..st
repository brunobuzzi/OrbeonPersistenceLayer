highcharts
drawAppFormInstancesModificationDayDistributionGraphOn: html
	| error |

	distributionReport := selectedDefinition application reportModificationDayDistributionQuantityFrom: self getStartDate to: self getEndDate satisfying: self queryBlock onError: [:ex | error := ex]. 

	self renderHeatMapWithException: error on: html