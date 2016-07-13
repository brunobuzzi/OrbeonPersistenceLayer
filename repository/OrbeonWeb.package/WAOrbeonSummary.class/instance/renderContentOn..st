other
renderContentOn: html

	appList := (self applicationsForCurrentUser collect: [:e | e applicationName]) asSortedCollection.

	html div id: 'orbeon-applications';
		with: [isDefinitionSide ifTrue: [self renderComboOn: html].].

	(appList size = 1) ifTrue: [selectedApplication := self getOrbeonApplicationClass applicationNamed: appList last.
										self renderFormDefinitionFor: selectedApplication].

	isDefinitionSide ifTrue: [html div id: 'orbeon-definitions';
			with: [html render: definitionsArea].].

	isDefinitionSide ifFalse: [html div id: 'orbeon-instances';
		with: [html render: instancesArea.].].