chart command
drawFormRegistryModificationDayDistributionGraph
	| text |

	selectedDefinition ifNil: [^self].
 
	graphName := #appDayDistributionGraph.

	distributionReport := selectedDefinition registry reportInstancesDayDistributionUsing: #modifiedTime from: self getStartDate to: self getEndDate satisfying: self queryBlock.

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := selectedDefinition  applicationName, ' | ', selectedDefinition formName , ' | total forms: ', selectedDefinition registry getAllInstancesSize printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.

	svgCanvas 
		drawWorkingDays: distributionReport rootDistribution
		at: 60@80 
		from: self getStartDate
		to: self getEndDate 
		width: 20 
		color: 'green' 
		dayHasContent: (self searchValueAt: 'dayHasContent').
	distributionReport svgContents: svgCanvas contents.