instance redirect
edit

	selectedFormInstance ifNil: [^self].

	self requestContext redirectTo: (self generateEditUrlFor: selectedFormInstance)