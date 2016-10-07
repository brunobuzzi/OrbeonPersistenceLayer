chart command
drawFormRegistryDonutQuantityChart
	| values text |
 
	selectedDefinition ifNil: [^self].
 
	graphName := #applicationFormsGraph.
	
	values := selectedDefinition registry getInstancesDistributionQuantityFrom: self getStartDate to: self getEndDate. 

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := selectedDefinition application applicationName, ' | ', selectedDefinition formName, ' | total forms: ', (selectedDefinition application getInstancesQuantityFrom: self getStartDate to: self getEndDate) printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.
	svgCanvas drawDonutQuantity: values at: 10@10 radius: 120 width: 60 backcolor: '#BCBCBC' transform: 'translate(150,150)'.
	"svgCanvas drawHorizontalBarGraph: values at: 20@20 maxWidth: 800 width: 25."