other
fieldTypeColumn

	^(SewafReportColumn 
			renderBlock: [:each :html | 			
					html text: (self model typeOf: each)
					"ifFalse: [html anchor callback: [self showRolsFor: each]; with: each name ]" ]
			title: 'Type')