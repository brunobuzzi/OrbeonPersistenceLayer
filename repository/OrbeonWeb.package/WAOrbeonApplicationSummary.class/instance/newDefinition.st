definition redirect
newDefinition

	selectedFormDefinition ifNil: [^self].

	self requestContext redirectTo: (self generateNewUrlForDefinition: selectedFormDefinition)