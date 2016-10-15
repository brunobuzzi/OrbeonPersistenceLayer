chart command
drawGlobalBarSplitQuantityChart
	| values text |
 
	graphName := #applicationFormsGraph.
	
	values := self getOrbeonApplicationClass getInstancesQuantityFrom: self getStartDate to: self getEndDate. 

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := 'total forms: ', (self getOrbeonApplicationClass getInstancesQuantityFrom: self getStartDate to: self getEndDate) printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.
	svgCanvas drawVerticalBarGraph: values at: 10@10 maxHeight: 270 width: 40 transform: 'translate(20,320)'.