charts
drawFieldInstancesModificationPieByMonthGraph
	| values text |
	
	selectedDefinition ifNil: [^self].

	graphName := #globalPieByMonthGraph.

	values := (self searchValueAt: 'form-condition')  
					ifNil: [selectedDefinition registry getInstancesModificationDistributionByMonthFrom: self getStartDate to: self getEndDate] 
					ifNotNil: [:blockString | selectedDefinition registry getInstancesModificationDistributionByMonthFrom: self getStartDate to: self getEndDate satisfying: blockString evaluate].

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := selectedDefinition  applicationName, ' | ', selectedDefinition formName,' | total forms: ', selectedDefinition instances size printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.

	svgCanvas drawDonutQuantity: values at: 10@10 radius: 120 width: 60 backcolor: '#BCBCBC' transform: 'translate(150,160)'.