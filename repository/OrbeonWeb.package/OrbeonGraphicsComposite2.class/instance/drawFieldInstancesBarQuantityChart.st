charts
drawFieldInstancesBarQuantityChart
	| fieldName distribution text |

	selectedDefinition ifNil: [^self].

 	graphName := #fieldDistributionGraph.

	fieldName := self searchValueAt: 'field-name' ifAbsent: [^self].

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := selectedDefinition  applicationName, ' | ', 'total forms: ', selectedDefinition printNumberOfInstances.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.

	distribution :=  (self hasSearchValueAt: 'form-condition')
		ifTrue: [selectedDefinition getQuantityDistributionForFieldNamed: fieldName satisfying: (self searchValueAt: 'form-condition') evaluate] 
		ifFalse: [selectedDefinition getQuantityDistributionForFieldNamed: fieldName].

	svgCanvas drawVerticalBarGraph: distribution at: 10@10 maxHeight: 270 width: 40 transform: 'translate(20,320)'.