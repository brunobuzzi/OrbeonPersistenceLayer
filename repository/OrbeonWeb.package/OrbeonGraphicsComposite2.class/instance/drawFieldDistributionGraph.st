charts
drawFieldDistributionGraph
	| fieldName distribution text start end |

	selectedDefinition ifNil: [^self].

 	graphName := #fieldDistributionGraph.

	fieldName := self searchValueAt: 'field-name' ifAbsent: [^self].

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := selectedDefinition  applicationName, ' | ', 'total forms: ', selectedDefinition printNumberOfInstances.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.

	start := (self searchValueAt: 'start') ifNil: [nil] ifNotNil: [:value | value asNumber].
	end := (self searchValueAt: 'end') ifNil: [nil] ifNotNil: [:value | value asNumber].

	distribution :=  (start notNil and: [end notNil])
		ifFalse: [selectedDefinition getQuantityDistributionForFieldNamed: fieldName]
		ifTrue: [selectedDefinition getQuantityDistributionForFieldNamed: fieldName from: start to: end].

	svgCanvas drawDonutQuantity: distribution at: 10@10 radius: 80 width: 40 backcolor: '#BCBCBC' transform: 'translate(100,120)'