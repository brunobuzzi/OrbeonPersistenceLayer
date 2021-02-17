library
getFormLibraryDefinitionFor: anOrbeonPublishedFormDefinition in: appName

	^self getOrbeonApplicationClass 
				formDefinitionNamed: 'library' 
				version: self libraryVersion 
				in: appName 
				ifNone: [LibraryReferenceException signal: 'The referenced Published Form does NOT exist !'].