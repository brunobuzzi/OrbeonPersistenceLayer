other
fieldLabelColumn

	^(SewafReportColumn 
			renderBlock: [:each :html | | label |
					label := self model labelAt: each.
					label  := (label size > 20) ifTrue: [label first: 20] ifFalse: [label].
					html text: label.
					"ifFalse: [html anchor callback: [self showRolsFor: each]; with: each name ]" ]
			title: 'Label')