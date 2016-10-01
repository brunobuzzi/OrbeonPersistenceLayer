graphics
drawFormInstancesDayDistributionGraph
	| values text points |

	selectedDefinition ifNil: [^self].
 
	graphName := #dayDistributionGraph.
	
	values := selectedDefinition getInstancesModificationDayDistributionQuantityFrom: (Date fromString: '01/01/2016') to: (Date fromString: '12/31/2016') groupedBy: 10.

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := selectedDefinition  applicationName, ' | ', selectedDefinition formName,' | total forms: ', selectedDefinition instances size printString.


	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.

	points := OrderedCollection new.
	values keysAndValuesDo: [:key :value | points add: (key @value)]. 

	svgCanvas 
		drawVerticalCurveFrom: (Date fromString: '01/01/2016')
		for: points
		r: 5
		id: UUID new asString
		strokeWidth: 1
		stroke: 'black'
		fillColor: 'blue'
		xShift: 30
		groupedBy: 10