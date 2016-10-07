charts
drawFieldInstancesModificationDayDistributionGraph
	| values text |

	selectedDefinition ifNil: [^self].
 
	graphName := #dayDistributionGraph.
	
	values := selectedDefinition registry getInstancesModificationDayDistributionQuantityFrom: self getStartDate to: self getEndDate satisfying: [:each | true].

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := selectedDefinition  applicationName, ' | ', selectedDefinition formName,' | total forms: ', selectedDefinition instances size printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.

	svgCanvas 
		drawWorkingDays: values
		at: 60@80 
		from: self getStartDate
		to: self getEndDate 
		width: 20 
		color: 'green' 
		dayHasContent: (self searchValueAt: 'dayHasContent').