chart command
drawAppBarQuantityChart
	| values text |
 
	selectedDefinition ifNil: [^self].
 
	graphName := #applicationFormsGraph.
	
	values := selectedDefinition application getInstancesDistributionQuantityFrom: self getStartDate to: self getEndDate. 

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := selectedDefinition application applicationName, ' | total forms: ', (selectedDefinition application getInstancesQuantityFrom: self getStartDate to: self getEndDate) printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.

	svgCanvas drawVerticalBarGraph: values at: 10@10 maxHeight: 270 width: 40 transform: 'translate(20,320)'.