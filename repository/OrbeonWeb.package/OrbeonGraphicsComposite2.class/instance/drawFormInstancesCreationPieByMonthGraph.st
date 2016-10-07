charts
drawFormInstancesCreationPieByMonthGraph
	| values text |

	selectedDefinition ifNil: [^self].

	graphName := #globalPieByMonthGraph.
	
	values := selectedDefinition getInstancesCreationDistributionByMonthFrom: self getStartDate to: self getEndDate. 

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := selectedDefinition  applicationName, ' | ', selectedDefinition formName,' | total forms: ', selectedDefinition instances size printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.

	svgCanvas drawDonutQuantity: values at: 10@10 radius: 120 width: 60 backcolor: '#BCBCBC' transform: 'translate(150,160)'.