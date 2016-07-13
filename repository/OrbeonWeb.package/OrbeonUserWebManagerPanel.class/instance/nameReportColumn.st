other
nameReportColumn

	^(SewafReportColumn 
			renderBlock: [:each :html | 			
					(selectedUser == each) 
					ifTrue: [html text: each name]
					ifFalse: [html anchor callback: [self showRolsFor: each]; with: each name ] ]
			title: 'Name')