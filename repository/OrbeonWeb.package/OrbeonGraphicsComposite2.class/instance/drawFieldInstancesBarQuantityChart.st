charts
drawFieldInstancesBarQuantityChart
	| fieldName report text |

	selectedDefinition ifNil: [^self].

 	graphName := #fieldDistributionGraph.

	fieldName := self searchValueAt: 'field-name' ifAbsent: [^self].

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := selectedDefinition  applicationName, ' | ', 'total forms: ', selectedDefinition printNumberOfInstances.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.

	report :=  (self hasSearchValueAt: 'form-condition')
		ifTrue: [selectedDefinition reportValueDistributionFor: fieldName from: self getStartDate to: self getEndDate satisfying: (self searchValueAt: 'form-condition') evaluate] 
		ifFalse: [selectedDefinition reportValueDistributionFor: fieldName from: self getStartDate to: self getEndDate].

	svgCanvas drawVerticalBarGraph: report rootDistribution at: 10@10 maxHeight: 270 width: 40 transform: 'translate(20,320)'.