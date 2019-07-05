definition redirect
editDefinition

	selectedFormDefinition ifNil: [^self].

	self requestContext redirectTo: (self generateEditUrlForDefinition: selectedFormDefinition)