other
createWarningButton

	^(SewafReportColumn 
			renderBlock: [:each :html | 
				each hasWarnings ifTrue: [
					html anchor callback: [self showWarningsOf: each]; 
									with: [html image url: (SEWAFFileLibrary / #warningiconPng); 
															title: 'View Warnings'; 
															altText: 'View Warnings'.]]] 
				title: '!') sortBlock: nil; 
			yourself