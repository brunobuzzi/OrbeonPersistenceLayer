graphics
drawAppFormInstancesCreationPieByMonthGraph
	| values text |

	selectedDefinition ifNil: [^self].
 
	graphName := #globalPieByMonthGraph.
	
	values := selectedDefinition application getInstancesCreationDistributionByMonthFrom: (Date fromString: '01/01/2016') to: (Date fromString: '12/31/2016'). 

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := selectedDefinition  applicationName, ' | ', 'total forms: ', selectedDefinition application getNumberOfInstances printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.

	svgCanvas drawDonutQuantity: values at: 10@10 radius: 120 width: 60 backcolor: '#BCBCBC' transform: 'translate(150,160)'.