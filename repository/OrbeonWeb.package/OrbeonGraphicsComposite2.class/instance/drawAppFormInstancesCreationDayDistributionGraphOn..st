highcharts
drawAppFormInstancesCreationDayDistributionGraphOn: html
	| error |

	selectedDefinition ifNil: [^self].

	distributionReport := selectedDefinition application reportCreationDayDistributionQuantityFrom: self getStartDate to: self getEndDate satisfying: self queryBlock onError: [:ex | error := ex].

	self renderHeatMapWithException: error on: html