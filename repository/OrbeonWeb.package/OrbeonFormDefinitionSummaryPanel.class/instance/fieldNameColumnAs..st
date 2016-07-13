other
fieldNameColumnAs: aString

	^(SewafReportColumn 
			renderBlock: [:each :html | 			
					html text: each
					"ifFalse: [html anchor callback: [self showRolsFor: each]; with: each name ]" ]
			title: aString)