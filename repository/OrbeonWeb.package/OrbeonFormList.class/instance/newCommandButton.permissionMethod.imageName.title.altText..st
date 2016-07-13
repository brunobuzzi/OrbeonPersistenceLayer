other
newCommandButton: command permissionMethod: permissionSymbol imageName: symbolImage title: aString altText: altText

	^(SewafReportColumn 
			renderBlock: [:each :html | 
				"(self session user perform: permissionSymbol with: each)
				ifTrue: ["html anchor callback: [self topPanel perform: command with: each]; 
											with: [html image url: (SEWAFFileLibrary / symbolImage); title: altText; altText: altText]"]
				ifFalse: []"] 
			title: aString) sortBlock: nil; 
			yourself