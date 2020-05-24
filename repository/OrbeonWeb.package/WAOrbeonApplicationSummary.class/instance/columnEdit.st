table columns
columnEdit

	^(SewafReportColumn 
			renderBlock: [:each :html | 
				html anchor callback: [self editDefinition: each]; 
								with: [html image url: (SEWAFIconLibrary / #actionsdocumentedit24Png); 
														title: ('Edit' translateIn: self session); 
														altText: ('Edit' translateIn: self session).]] 
				title: 'EDIT') sortBlock: nil; 
			cssClass: 'width-6-percent';
			yourself