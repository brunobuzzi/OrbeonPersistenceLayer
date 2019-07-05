instance redirect
viewPdf

	selectedFormInstance ifNil: [^self].

	self requestContext redirectTo: (self generateViewPdfUrlFor: selectedFormInstance)