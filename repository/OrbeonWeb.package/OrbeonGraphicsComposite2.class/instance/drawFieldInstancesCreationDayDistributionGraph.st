charts
drawFieldInstancesCreationDayDistributionGraph
	| values text total report queryBlock |

	selectedDefinition ifNil: [^self].
 
	graphName := #dayDistributionGraph.

	queryBlock := (self searchValueAt: 'form-condition') ifNil: [[:each | true]] ifNotNil: [:blockString | blockString evaluate].

	report := selectedDefinition registry reportInstancesDayDistributionUsing: #createdTime from: self getStartDate to: self getEndDate satisfying: queryBlock.
	
	total := values inject: 0 into:  [:sum :each | sum + each]. 

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := selectedDefinition  applicationName, ' | ', selectedDefinition formName,' | total forms: ', report getTotalValue printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.

	svgCanvas 
		drawWorkingDays: report rootDistribution
		at: 60@80 
		from: self getStartDate
		to: self getEndDate 
		width: 20 
		color: 'green' 
		dayHasContent: (self searchValueAt: 'dayHasContent' ifAbsent: [false]).