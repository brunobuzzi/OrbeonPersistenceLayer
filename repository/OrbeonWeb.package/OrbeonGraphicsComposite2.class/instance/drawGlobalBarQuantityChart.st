chart command
drawGlobalBarQuantityChart
	| text |
 
	graphName := #applicationFormsGraph.
	
	distributionReport := self getOrbeonApplicationClass reportQuantityDistributionFrom: self getStartDate to: self getEndDate. 



"
	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := 'total forms: ', distributionReport getTotalValue printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.
	svgCanvas drawVerticalBarGraph: distributionReport rootDistribution at: 10@10 maxHeight: 270 width: 40 transform: 'translate(20,320)'.
	distributionReport svgContents: svgCanvas contents.
"