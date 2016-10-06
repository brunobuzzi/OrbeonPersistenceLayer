charts
drawGlobalAppFormInstancesDayDistributionGraph
	| values text points |

	selectedDefinition ifNil: [^self].
 
	graphName := #appDayDistributionGraph.
	
	values := self getOrbeonApplicationClass getInstancesModificationDayDistributionQuantityFrom: self getAppStartDate to: self getAppEndDate groupedBy: 5. 

	svgCanvas := self svgCanvasClass newWidth: '3000px' height: '900px'.
	text := 'total forms in repository: ', self getOrbeonApplicationClass getNumberOfFormInstances printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.

	points := OrderedCollection new.
	values keysAndValuesDo: [:key :value | points add: (key @value)]. 

	svgCanvas 
		drawVerticalCurveFrom: self getAppStartDate
		for: points
		r: 5
		id: UUID new asString
		strokeWidth: 1
		stroke: 'black'
		fillColor: 'blue'
		xShift: 30
		groupedBy: 5