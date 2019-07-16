table columns
columnViewInstance

	^(SewafReportColumn 
			renderBlock: [:each :html | 
				html anchor
								target: '_blank';
								url: (self generateViewUrlFor: each); 
								with: [html image url: (SEWAFIconLibrary / #view24Png); 
														title: ('View' translateIn: self session); 
														altText: ('View' translateIn: self session).]] 
				title: 'VIEW') sortBlock: nil; 
			cssClass: 'width-6-percent';
			yourself