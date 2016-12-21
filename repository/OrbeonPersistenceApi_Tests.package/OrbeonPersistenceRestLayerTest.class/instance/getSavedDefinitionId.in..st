other
getSavedDefinitionId: formName in: appName

	^(self getOrbeonApplicationClass getLatestSavedDefinition: formName app: appName ifNone: [nil]) 
		ifNotNil: [:definition | definition id] 
		ifNil: [UUID new asString].