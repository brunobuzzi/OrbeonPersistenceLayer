highcharts
drawAppFormInstancesModificationPieByMonthGraphOn: html 
	| error |

	selectedDefinition ifNil: [^self].

	self queryBlockInInvalid ifTrue: [^self renderInvalidQueryBlockOn: html].

	distributionReport := selectedDefinition application reportModificationDistributionByMonthFrom: self getStartDate to: self getEndDate satisfying: self queryBlock onError: [:ex | error := ex]. 

	error ifNotNil: [:exception | ^self renderException: exception on: html].

	self renderArray2Chart: html highcharts newChart 
			distributions: (OrderedCollection with: distributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesPie)
			on: html