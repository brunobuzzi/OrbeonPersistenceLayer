charts
drawFormInstancesModificationDayDistributionGraph
	| definition text |

	selectedDefinition ifNil: [^self].
 
	graphName := #dayDistributionGraph.
	
	definition := self hasAllVersionsSelected ifFalse: [selectedDefinition] ifTrue: [selectedDefinition registry].

	distributionReport := selectedDefinition reportInstancesDayDistributionUsing: #modifiedTime from: self getStartDate to: self getEndDate satisfying: self queryBlock.

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := selectedDefinition  applicationName, ' | ', selectedDefinition formName,' | total forms: ', selectedDefinition instances size printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.

	svgCanvas 
		drawWorkingDays: distributionReport rootDistribution
		at: 60@80 
		from: self getStartDate
		to: self getEndDate
		width: 20 
		color: 'green' 
		dayHasContent: (self searchValueAt: 'dayHasContent' ifAbsent: [false]).

	distributionReport svgContents: svgCanvas contents.