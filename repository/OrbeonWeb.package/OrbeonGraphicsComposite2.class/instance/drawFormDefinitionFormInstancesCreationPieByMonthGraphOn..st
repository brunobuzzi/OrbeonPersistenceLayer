highcharts
drawFormDefinitionFormInstancesCreationPieByMonthGraphOn: html
	| error |

	selectedDefinition ifNil: [^self].

	distributionReport := selectedDefinition reportCreationDistributionByMonthFrom: self getStartDate to: self getEndDate satisfying: self queryBlock onError: [:ex | error := ex].

	self renderArray2Chart: html highcharts newChart 
			distributions: (OrderedCollection with: distributionReport) 
			chartsTypes: (OrderedCollection with: HighchartsSeriesPie)
			on: html