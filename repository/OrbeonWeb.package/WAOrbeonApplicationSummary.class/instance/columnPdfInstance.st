table columns
columnPdfInstance

	^(SewafReportColumn 
			renderBlock: [:each :html | 
				html anchor
								target: '_blank';
								url: (self generateViewPdfUrlFor: each); 
								with: [html image url: (SEWAFIconLibrary / #pdf24Png); 
														title: ('View PDF' translateIn: self session); 
														altText: ('View PDF' translateIn: self session).]] 
				title: 'PDF') sortBlock: nil; 
			cssClass: 'width-6-percent';
			yourself