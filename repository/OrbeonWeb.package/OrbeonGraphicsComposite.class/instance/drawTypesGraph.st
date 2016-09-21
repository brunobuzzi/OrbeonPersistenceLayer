other
drawTypesGraph
	| values text |

	selectedDefinition ifNil: [^self]. 

	graphName := #definitionTypeGraph.
	
	values := selectedDefinition getFieldTypesPercentages. 
	svgCanvas := self svgCanvasClass newWidth: '1000px' height: '1000px'.
	text := selectedDefinition  applicationName, ' | ', selectedDefinition formName, ' | total fields: ', selectedDefinition fieldsType size printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.
	svgCanvas drawPiePercentage: values at: 10@10 radius: 80 transform: 'translate(150,150)'.