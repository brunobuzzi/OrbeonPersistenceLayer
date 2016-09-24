other
drawFieldDistributionGraph
	| fieldName distribution text start end |

	selectedDefinition ifNil: [^self].

 	graphName := #fieldDistributionGraph.

	fieldName := self searchValueAt: 'field-name' ifAbsent: [^self].

	svgCanvas := self svgCanvasClass newWidth: '1000px' height: '1000px'.
	text := selectedDefinition  applicationName, ' | ', ' | total forms: ', selectedDefinition printNumberOfInstances.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.

	start := (self searchValueAt: 'start') ifNil: [nil] ifNotNil: [:value | value asNumber].
	end := (self searchValueAt: 'end') ifNil: [nil] ifNotNil: [:value | value asNumber].

	distribution :=  (start notNil and: [end notNil])
		ifFalse: [selectedDefinition getPercentageDistributionForFieldNamed: fieldName]
		ifTrue: [selectedDefinition getPercentageDistributionForFieldNamed: fieldName from: start to: end].

	svgCanvas drawDonutPercentage: distribution at: 10@10 radius: 80 width: 40 backcolor: '#BCBCBC' transform: 'translate(100,120)'