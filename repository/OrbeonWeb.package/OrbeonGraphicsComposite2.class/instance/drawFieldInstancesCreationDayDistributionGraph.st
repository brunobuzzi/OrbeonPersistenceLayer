charts
drawFieldInstancesCreationDayDistributionGraph
	| values text total |

	selectedDefinition ifNil: [^self].
 
	graphName := #dayDistributionGraph.
	
	values := (self searchValueAt: 'form-condition')  
					ifNil: [selectedDefinition registry getInstancesCreationDayDistributionQuantityFrom: self getStartDate to: self getEndDate] 
					ifNotNil: [:blockString | selectedDefinition registry getInstancesCreationDayDistributionQuantityFrom: self getStartDate to: self getEndDate satisfying: blockString evaluate].

	total := values inject: 0 into:  [:sum :each | sum + each]. 

	svgCanvas := self svgCanvasClass newWidth: '100%' height: '100%'.
	text := selectedDefinition  applicationName, ' | ', selectedDefinition formName,' | total forms: ', total printString.

	svgCanvas drawText: text at: 20@20 textSizePx: '18px'.

	svgCanvas 
		drawWorkingDays: values
		at: 60@80 
		from: self getStartDate
		to: self getEndDate 
		width: 20 
		color: 'green' 
		dayHasContent: (self searchValueAt: 'dayHasContent').