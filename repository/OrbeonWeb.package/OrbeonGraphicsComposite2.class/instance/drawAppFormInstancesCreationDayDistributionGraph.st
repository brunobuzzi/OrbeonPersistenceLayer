other
drawAppFormInstancesCreationDayDistributionGraph
	| values text |

	selectedDefinition ifNil: [^self].
 
	graphName := #appDayDistributionGraph.
	
	values := selectedDefinition application getInstancesCreationDayDistributionQuantityFrom: (Date fromString: '01/01/2016') to: (Date fromString: '12/31/2016'). 

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := selectedDefinition  applicationName, ' | ', ' | total forms: ', selectedDefinition application getNumberInstances printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.

	svgCanvas 
		drawWorkingDays: values
		at: 60@80 
		from: (Date fromString: '01/01/2016') 
		to: (Date fromString: '12/31/2016') 
		width: 20 
		color: 'green' 
		dayHasContent: (self searchValueAt: 'dayHasContent').