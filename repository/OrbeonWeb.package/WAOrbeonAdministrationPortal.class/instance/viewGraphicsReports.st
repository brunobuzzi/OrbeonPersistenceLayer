other
viewGraphicsReports

	^(arena class == WAOrbeonChartsReportComposite) 
	ifTrue: [arena]
	ifFalse: [WAOrbeonChartsReportComposite parent: self]