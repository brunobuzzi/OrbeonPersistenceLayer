table columns
columnDelete

	^(SewafReportColumn 
			renderBlock: [:each :html | 
				html anchor callback: [self removeUserFromRole: each]; 
								with: [html image url: (SEWAFIconLibrary / #remove24Png); 
														title: ('Delete' translateIn: self session); 
														altText: ('Delete' translateIn: self session).]] 
				title: 'DEL') sortBlock: nil; 
			cssClass: 'width-6-percent';
			yourself