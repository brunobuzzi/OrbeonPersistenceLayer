charts
drawFieldInstancesDoubleBarQuantityChart
	| fieldName fieldName2 text |

	selectedDefinition ifNil: [^self].

 	graphName := #fieldDistributionGraph.

	fieldName := self searchValueAt: 'field-name' ifAbsent: [^self].
	fieldName2 := self searchValueAt: 'field-name-2' ifAbsent: [^self].

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := selectedDefinition  applicationName, ' | ', 'total forms: ', selectedDefinition printNumberOfInstances.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.

	distributionReport := selectedDefinition reportValueDistributionForFieldName: fieldName secondaryField: fieldName2.

	svgCanvas drawJoin: distributionReport getFirstSubDistribution
					verticalBarGraph: distributionReport rootDistribution 
					at: 15@15 
					maxHeight: 150 
					width: 30
					transform: 'translate(50,300) scale(1.5, 1.5)'.

	distributionReport svgContents: svgCanvas contents