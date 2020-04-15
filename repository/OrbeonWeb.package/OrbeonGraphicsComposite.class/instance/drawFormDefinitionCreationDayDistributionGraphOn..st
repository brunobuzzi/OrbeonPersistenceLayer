highcharts
drawFormDefinitionCreationDayDistributionGraphOn: html
	| error |

	distributionReport := selectedDefinition reportInstancesDayDistributionUsing: #createdTime from: self getStartDate to: self getEndDate satisfying: self queryBlock onError: [:ex | error := ex]. 

	self renderHeatMapWithException: error on: html