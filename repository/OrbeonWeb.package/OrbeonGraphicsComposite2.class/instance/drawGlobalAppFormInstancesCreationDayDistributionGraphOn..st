highcharts
drawGlobalAppFormInstancesCreationDayDistributionGraphOn: html
	| error |

	distributionReport := self getOrbeonApplicationClass reportCreationDayDistributionQuantityFrom: self getStartDate to: self getEndDate satisfying: self queryBlock onError: [:ex | error := ex]. 

	self renderHeatMapWithException: error on: html