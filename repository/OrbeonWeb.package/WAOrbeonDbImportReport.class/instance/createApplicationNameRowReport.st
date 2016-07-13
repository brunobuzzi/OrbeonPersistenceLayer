other
createApplicationNameRowReport

	^(SewafReportColumn 
			renderBlock: [:each :html | 			
					html text: each getApplicationName]
			title: 'Application Name')