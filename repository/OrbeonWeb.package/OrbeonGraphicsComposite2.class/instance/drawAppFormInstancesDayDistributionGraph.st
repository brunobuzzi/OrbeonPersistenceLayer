graphics
drawAppFormInstancesDayDistributionGraph
	| values text points |

	selectedDefinition ifNil: [^self].
 
	graphName := #appDayDistributionGraph.
	
	values := selectedDefinition application getInstancesModificationDayDistributionQuantityFrom: self getAppStartDate to: self getAppEndDate groupedBy: 5. 

	svgCanvas := self svgCanvasClass newWidth: '3000px' height: '470px'.
	text := selectedDefinition  applicationName, ' | ', 'total forms: ', selectedDefinition application getNumberOfInstances printString.

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
		groupedBy: 5