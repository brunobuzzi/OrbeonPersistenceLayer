graphics
drawGlobalFormInstancesModificationPieByMonthGraph
	| values text |

	selectedDefinition ifNil: [^self].
 
	graphName := #globalPieByMonthGraph.
	
	values := self getOrbeonApplicationClass getInstancesModificationDistributionByMonthFrom: (Date fromString: '01/01/2016') to: (Date fromString: '12/31/2016'). 

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := 'total forms in repository: ', self getOrbeonApplicationClass getNumberOfFormInstances  printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.

	svgCanvas drawDonutQuantity: values at: 10@10 radius: 120 width: 60 backcolor: '#BCBCBC' transform: 'translate(150,160)'.