chart command
drawGlobalDonutQuantityChart
	| report text |
 
	graphName := #applicationFormsGraph.
	
	report := self getOrbeonApplicationClass reportQuantityDistributionFrom: self getStartDate to: self getEndDate. 
	report addToCache.

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := 'total forms: ', report getTotalValue printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.
	svgCanvas drawDonutQuantity: report rootDistribution at: 10@10 radius: 120 width: 60 backcolor: '#BCBCBC' transform: 'translate(150,150)'.
	"svgCanvas drawHorizontalBarGraph: values at: 20@20 maxWidth: 800 width: 25."
	report svgContents: svgCanvas contents.