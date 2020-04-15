highcharts
drawFormRegistryModificationDayDistributionGraphOn: html
	| error |

	distributionReport := selectedDefinition registry reportInstancesDayDistributionUsing: #modifiedTime from: self getStartDate to: self getEndDate satisfying: self queryBlock onError: [:ex | error := ex].

	self renderHeatMapWithException: error on: html