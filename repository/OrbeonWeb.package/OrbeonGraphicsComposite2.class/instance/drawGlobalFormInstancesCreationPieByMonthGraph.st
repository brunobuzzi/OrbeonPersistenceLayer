charts
drawGlobalFormInstancesCreationPieByMonthGraph
	| text |
 
	graphName := #globalPieByMonthGraph.

	distributionReport := self getOrbeonApplicationClass reportCreationDistributionByMonthFrom: self getStartDate to: self getEndDate. 

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := 'total forms in repository: ', self getOrbeonApplicationClass getNumberOfFormInstances  printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.

	svgCanvas drawDonutQuantity: distributionReport rootDistribution at: 10@10 radius: 120 width: 60 backcolor: '#BCBCBC' transform: 'translate(150,160)'.
	distributionReport svgContents: svgCanvas contents.