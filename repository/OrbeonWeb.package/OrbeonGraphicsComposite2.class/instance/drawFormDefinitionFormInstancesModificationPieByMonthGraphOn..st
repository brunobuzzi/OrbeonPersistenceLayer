highcharts
drawFormDefinitionFormInstancesModificationPieByMonthGraphOn: html
	| error |

	selectedDefinition ifNil: [^self].

	self queryBlockInInvalid ifTrue: [^self renderInvalidQueryBlockOn: html].

	error ifNotNil: [:exception | ^self renderException: exception on: html].

	distributionReport := selectedDefinition reportModificationDistributionByMonthFrom: self getStartDate to: self getEndDate satisfying: self queryBlock onError: [:ex | error := ex].

	self renderArray2Chart: html highcharts newChart 
			distributions: (OrderedCollection with: distributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesPie)
			on: html