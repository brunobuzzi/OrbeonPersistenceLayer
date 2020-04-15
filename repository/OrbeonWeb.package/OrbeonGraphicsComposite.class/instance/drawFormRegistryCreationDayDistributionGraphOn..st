highcharts
drawFormRegistryCreationDayDistributionGraphOn: html
	| error |

	distributionReport := selectedDefinition registry reportInstancesDayDistributionUsing: #createdTime from: self getStartDate to: self getEndDate satisfying: self queryBlock onError: [:ex | error := ex]. 

	self renderHeatMapWithException: error on: html