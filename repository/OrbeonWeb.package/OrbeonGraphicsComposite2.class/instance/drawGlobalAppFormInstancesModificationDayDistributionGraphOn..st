highcharts
drawGlobalAppFormInstancesModificationDayDistributionGraphOn: html
	| error |

	distributionReport := self getOrbeonApplicationClass reportModificationDayDistributionQuantityFrom: self getStartDate to: self getEndDate satisfying: self queryBlock onError: [:ex | error := ex]. 

	self renderHeatMapWithException: error on: html