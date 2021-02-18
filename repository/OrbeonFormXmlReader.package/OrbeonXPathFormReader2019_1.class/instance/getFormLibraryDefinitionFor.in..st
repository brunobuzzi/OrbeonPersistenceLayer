library
getFormLibraryDefinitionFor: anOrbeonPublishedFormDefinition in: appName

	^self getOrbeonApplicationClass 
				formDefinitionNamed: 'library' 
				version: anOrbeonPublishedFormDefinition libraryVersion "issue #393"
				in: appName 
				ifNone: [LibraryReferenceException signal: 'The referenced Published Form does NOT exist !'].