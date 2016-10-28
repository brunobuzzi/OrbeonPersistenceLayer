charts
drawFieldInstancesDoubleDonutQuantityChart
	| fieldName fieldName2 text |

	selectedDefinition ifNil: [^self].

 	graphName := #fieldDistributionGraph.

	fieldName := self searchValueAt: 'field-name' ifAbsent: [^self].
	fieldName2 := self searchValueAt: 'field-name-2' ifAbsent: [^self].

	distributionReport := selectedDefinition reportValueDistributionForFieldName: fieldName secondaryField: fieldName2 satisfying: self queryBlock.

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := selectedDefinition  applicationName, ' | ', 'total forms: ', distributionReport getTotalValue printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.

	svgCanvas drawDoubleDonutQuantity: distributionReport rootDistribution 
					subQuantities: distributionReport getFirstSubDistribution
					at: 10@10 
					radius: 100 
					subRadiusRatio: 1.4 
					backcolor: 'lightgray' 
					transform:  'translate(200,200)'.

	distributionReport svgContents: svgCanvas contents