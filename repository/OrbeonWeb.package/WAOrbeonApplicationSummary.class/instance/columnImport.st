table columns
columnImport

	^(SewafReportColumn 
			renderBlock: [:each :html | 
				html anchor callback: [self edit: each]; 
								with: [html image url: (SEWAFIconLibrary / #import24Png); 
														title: ('Import Forms' translateIn: self session); 
														altText: ('Import Forms' translateIn: self session).]] 
				title: 'IMPORT') sortBlock: nil; 
			cssClass: 'width-6-percent';
			yourself