charts
drawFieldInstancesCreationPieByMonthGraph
	| report text |
	
	selectedDefinition ifNil: [^self].

	graphName := #globalPieByMonthGraph.

	report := (self searchValueAt: 'form-condition')  "we search in the registry because the search is through all field instances"
					ifNil: [selectedDefinition registry reportCreationDistributionByMonthFrom: self getStartDate to: self getEndDate] 
					ifNotNil: [:blockString | selectedDefinition registry reportCreationDistributionByMonthFrom: self getStartDate to: self getEndDate satisfying: blockString evaluate].

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := selectedDefinition  applicationName, ' | ', selectedDefinition formName,' | total forms: ', selectedDefinition registry numberOfInstances printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.

	svgCanvas drawDonutQuantity: report rootDistribution at: 10@10 radius: 120 width: 60 backcolor: '#BCBCBC' transform: 'translate(150,160)'.