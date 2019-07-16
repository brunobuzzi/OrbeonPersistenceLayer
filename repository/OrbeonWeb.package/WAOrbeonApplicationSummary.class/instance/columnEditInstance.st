table columns
columnEditInstance

	^(SewafReportColumn 
			renderBlock: [:each :html | 
				html anchor 
								target: '_blank';
								url: (self generateEditUrlFor: each); 
								with: [html image url: (SEWAFIconLibrary / #actionsdocumentedit24Png); 
														title: ('Edit' translateIn: self session); 
														altText: ('Edit' translateIn: self session).]] 
				title: 'EDIT') sortBlock: nil; 
			cssClass: 'width-6-percent';
			yourself