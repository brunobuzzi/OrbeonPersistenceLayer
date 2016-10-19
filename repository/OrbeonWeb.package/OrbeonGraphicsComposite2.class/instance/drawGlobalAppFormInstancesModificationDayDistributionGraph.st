charts
drawGlobalAppFormInstancesModificationDayDistributionGraph
	| text |
 
	graphName := #globalAppDayDistributionGraph. 
	
	distributionReport := self getOrbeonApplicationClass reportModificationDayDistributionQuantityFrom: self getStartDate to: self getEndDate. 

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := 'total forms in repository: ', self getOrbeonApplicationClass getNumberOfFormInstances printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.

	svgCanvas 
		drawWorkingDays: distributionReport rootDistribution
		at: 60@80 
		from: self getStartDate
		to: self getEndDate
		width: 20 
		color: 'green' 
		dayHasContent: (self searchValueAt: 'dayHasContent' ifAbsent: [false]).
	distributionReport svgContents: svgCanvas contents.