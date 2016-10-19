charts
drawFieldInstancesBarQuantityChart
	| fieldName text |

	selectedDefinition ifNil: [^self].

 	graphName := #fieldDistributionGraph.

	fieldName := self searchValueAt: 'field-name' ifAbsent: [^self].

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := selectedDefinition  applicationName, ' | ', 'total forms: ', selectedDefinition printNumberOfInstances.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.

	distributionReport :=  self selectedDefinition reportValueDistributionFor: fieldName from: self getStartDate to: self getEndDate satisfying: self queryBlock.

	svgCanvas drawVerticalBarGraph: distributionReport rootDistribution at: 10@10 maxHeight: 270 width: 40 transform: 'translate(20,320)'.

	distributionReport svgContents: svgCanvas contents