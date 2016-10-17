charts
drawFieldInstancesCreationDayDistributionGraph
	| values text total report |

	selectedDefinition ifNil: [^self].
 
	graphName := #dayDistributionGraph.

	report := (self searchValueAt: 'form-condition')  
					ifNil: [selectedDefinition registry reportInstancesDayDistributionUsing: #createdTime from: self getStartDate to: self getEndDate] 
					ifNotNil: [:blockString | selectedDefinition registry reportInstancesDayDistributionUsing: #createdTime from: self getStartDate to: self getEndDate satisfying: blockString evaluate].
	
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