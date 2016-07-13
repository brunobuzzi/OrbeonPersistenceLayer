other
renderContentOn: html
	| importedObjects |

	importedObjects := OrderedCollection new.

	self generateReportIn: importedObjects.

	html div id: 'imported-data'; with: [
		html render: (self reportTableFor: importedObjects).

		html anchor callback: [self answer: true. parent refresh];
			with: [html image  url: (SEWAFFileLibrary / #arrowback4iconPng); altText: 'Back to Definitions'; title: 'Back to Definitions'].
	]