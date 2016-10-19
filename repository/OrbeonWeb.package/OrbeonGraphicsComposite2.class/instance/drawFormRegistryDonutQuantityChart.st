chart command
drawFormRegistryDonutQuantityChart
	| text |
 
	selectedDefinition ifNil: [^self].
 
	graphName := #applicationFormsGraph.

	distributionReport := selectedDefinition registry reportQuantityDistributionFrom: self getStartDate to: self getEndDate satisfying: self queryBlock.

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := selectedDefinition application applicationName, ' | ', selectedDefinition formName, ' | total forms: ', (selectedDefinition registry getInstancesQuantityFrom: self getStartDate to: self getEndDate) printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.
	svgCanvas drawDonutQuantity: distributionReport rootDistribution at: 10@10 radius: 120 width: 60 backcolor: '#BCBCBC' transform: 'translate(150,150)'.
	"svgCanvas drawHorizontalBarGraph: values at: 20@20 maxWidth: 800 width: 25."
	distributionReport svgContents: svgCanvas contents.