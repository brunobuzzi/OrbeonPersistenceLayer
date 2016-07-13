import
onSelectedApplicationChanged: value

	selectedApplication := self getOrbeonApplicationClass applicationNamed: value ifNone: [^nil].

	self renderFormDefinitionFor: selectedApplication