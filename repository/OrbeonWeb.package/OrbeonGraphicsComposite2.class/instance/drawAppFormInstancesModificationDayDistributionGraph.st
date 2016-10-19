charts
drawAppFormInstancesModificationDayDistributionGraph
	| report text |

	selectedDefinition ifNil: [^self].
 
	graphName := #appDayDistributionGraph.
	
	report := selectedDefinition application reportModificationDayDistributionQuantityFrom: self getStartDate to: self getEndDate. 

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := selectedDefinition  applicationName, ' | ', 'total forms: ', selectedDefinition application getNumberOfInstances printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.

	svgCanvas 
		drawWorkingDays: report rootDistribution
		at: 60@80 
		from: self getStartDate
		to: self getEndDate 
		width: 20 
		color: 'green' 
		dayHasContent: (self searchValueAt: 'dayHasContent' ifAbsent: [false]).