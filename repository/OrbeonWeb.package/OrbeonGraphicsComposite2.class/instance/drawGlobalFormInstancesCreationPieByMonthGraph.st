graphics
drawGlobalFormInstancesCreationPieByMonthGraph
	| values text |

	selectedDefinition ifNil: [^self].
 
	graphName := #globalPieByMonthGraph.
	
	values := self getOrbeonApplicationClass getInstancesCreationDistributionByMonthFrom: self getAppStartDate to: self getAppEndDate. 

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := 'total forms in repository: ', self getOrbeonApplicationClass getNumberOfFormInstances  printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.

	svgCanvas drawDonutQuantity: values at: 10@10 radius: 120 width: 60 backcolor: '#BCBCBC' transform: 'translate(150,160)'.