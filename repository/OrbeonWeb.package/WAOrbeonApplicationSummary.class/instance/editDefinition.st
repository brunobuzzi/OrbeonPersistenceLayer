definition redirect
editDefinition

	selectedFormDefinition ifNil: [^self].

	self editDefinition: selectedFormDefinition