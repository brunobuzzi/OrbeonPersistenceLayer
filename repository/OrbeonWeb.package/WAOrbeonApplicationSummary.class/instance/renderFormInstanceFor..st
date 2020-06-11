other
renderFormInstanceFor: anOrbeonFormDefinition

	self setInstanceSide.

	innerBatchList items: anOrbeonFormDefinition instancesAsArray.

	selectedFormDefinition := anOrbeonFormDefinition