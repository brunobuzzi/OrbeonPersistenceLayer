highcharts
drawFormDefinitionModificationnDayDistributionGraphOn: html
	| error |

	distributionReport := selectedDefinition reportInstancesDayDistributionUsing: #modifiedTime from: self getStartDate to: self getEndDate satisfying: self queryBlock onError: [:ex | error := ex]. 

	self renderHeatMapWithException: error on: html