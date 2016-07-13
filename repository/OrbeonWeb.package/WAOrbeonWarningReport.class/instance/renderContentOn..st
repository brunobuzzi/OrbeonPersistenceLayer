other
renderContentOn: html

	html div id: 'imported-data'; with: [
		html render: self reportWarningsTable.

		html anchor callback: [self answer: true];
			with: [html image  url: (SEWAFFileLibrary / #arrowback4iconPng); altText: 'Back to Definitions'; title: 'Back to Definitions'].
	]