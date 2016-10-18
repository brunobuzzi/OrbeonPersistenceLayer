charts
drawFormRegistryFormInstancesCreationPieByMonthGraph
	| report text |

	selectedDefinition ifNil: [^self].
 
	graphName := #globalPieByMonthGraph.

	report := selectedDefinition registry reportCreationDistributionByMonthFrom: self getStartDate to: self getEndDate satisfying: self queryBlock.


	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := selectedDefinition  applicationName, ' | ', 'total forms: ', selectedDefinition application getNumberOfInstances printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.

	svgCanvas drawDonutQuantity: report rootDistribution at: 10@10 radius: 120 width: 60 backcolor: '#BCBCBC' transform: 'translate(150,160)'.