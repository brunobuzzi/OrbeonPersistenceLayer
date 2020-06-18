sanity checks
checkUnreacheableLibrarySectionDefinitionsFor: anOrbeonPublishedFormDefinition

	anOrbeonPublishedFormDefinition sectionDefinitionsDo: [:sectionDef | 
		sectionDef isLibraryComponent
		ifTrue: [sectionDef isInRegistry ifFalse: [OrbeonSanityCheckException signal: 'This library component belong to a remove <OrbeonPublishedFormDefinition>']] 
	].