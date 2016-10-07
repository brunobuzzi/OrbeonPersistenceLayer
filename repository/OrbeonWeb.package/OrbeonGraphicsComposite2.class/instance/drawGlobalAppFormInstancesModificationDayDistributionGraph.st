charts
drawGlobalAppFormInstancesModificationDayDistributionGraph
	| values text |
 
	graphName := #globalAppDayDistributionGraph. 
	
	values := self getOrbeonApplicationClass getInstancesModificationDayDistributionQuantityFrom: self getAppStartDate to: self getAppEndDate. 

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := 'total forms in repository: ', self getOrbeonApplicationClass getNumberOfFormInstances printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.

	svgCanvas 
		drawWorkingDays: values
		at: 60@80 
		from: self getAppStartDate
		to: self getAppEndDate
		width: 20 
		color: 'green' 
		dayHasContent: (self searchValueAt: 'dayHasContent').