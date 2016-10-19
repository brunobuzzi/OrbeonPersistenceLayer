chart command
drawAppDonutQuantityChart
	| text |
 
	selectedDefinition ifNil: [^self].
 
	graphName := #applicationFormsGraph.
	
	distributionReport := selectedDefinition application reportQuantityDistributionFrom: self getStartDate to: self getEndDate. 

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := selectedDefinition application applicationName, ' | total forms: ', distributionReport getTotalValue printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.
	svgCanvas drawDonutQuantity: distributionReport rootDistribution at: 10@10 radius: 120 width: 60 backcolor: '#BCBCBC' transform: 'translate(150,150)'.
	"svgCanvas drawHorizontalBarGraph: values at: 20@20 maxWidth: 800 width: 25."
	distributionReport svgContents: svgCanvas contents.