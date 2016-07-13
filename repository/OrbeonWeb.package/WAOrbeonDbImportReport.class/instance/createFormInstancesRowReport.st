other
createFormInstancesRowReport

	^(SewafReportColumn 
			renderBlock: [:each :html | 			
					html text: each numberOfForms]
			title: 'Number of Instances')