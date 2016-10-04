graphics
drawApplicationFormsGraph
	| values text |

	selectedDefinition ifNil: [^self].
 
	graphName := #applicationFormsGraph.
	
	values := selectedDefinition application getInstancesDistributionQuantity. 

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := selectedDefinition  applicationName, ' | ', 'total forms: ', selectedDefinition application getNumberOfInstances printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.
	svgCanvas drawDonutQuantity: values at: 10@10 radius: 80 width: 40 backcolor: '#BCBCBC' transform: 'translate(100,120)'.
	"svgCanvas drawHorizontalBarGraph: values at: 20@20 maxWidth: 800 width: 25."