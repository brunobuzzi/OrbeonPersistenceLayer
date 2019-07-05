instance redirect
view

	selectedFormInstance ifNil: [^self].

	self requestContext response redirectTo: (self generateViewUrlFor: selectedFormInstance).