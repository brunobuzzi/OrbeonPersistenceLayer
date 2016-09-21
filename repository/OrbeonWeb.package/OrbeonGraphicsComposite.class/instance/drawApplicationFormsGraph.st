other
drawApplicationFormsGraph
	| values text |

	selectedDefinition ifNil: [^self].
 
	graphName := #applicationFormsGraph.
	
	values := selectedDefinition application getInstancesDistributionPercentage. 

	svgCanvas := self svgCanvasClass newWidth: '1000px' height: '1000px'.
	text := selectedDefinition  applicationName, ' | ', ' | total forms: ', selectedDefinition application getNumberInstances printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.
	svgCanvas drawPiePercentage: values at: 10@10 radius: 80 transform: 'translate(150,150)'.
	"svgCanvas drawHorizontalBarGraph: values at: 20@20 maxWidth: 800 width: 25."