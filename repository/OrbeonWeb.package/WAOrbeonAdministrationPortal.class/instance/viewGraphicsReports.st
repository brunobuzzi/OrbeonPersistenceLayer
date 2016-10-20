other
viewGraphicsReports

	^(arena class == OrbeonChartsReportComposite) 
	ifTrue: [arena]
	ifFalse: [OrbeonChartsReportComposite parent: self]