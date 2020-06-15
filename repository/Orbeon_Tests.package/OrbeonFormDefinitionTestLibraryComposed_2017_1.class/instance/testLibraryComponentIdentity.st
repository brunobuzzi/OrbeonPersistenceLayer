other
testLibraryComponentIdentity

	form sectionDefinitionsDo: [:eachSection | eachSection isLibraryComponent ifTrue: [self assert: (eachSection sectionDefinition libraryComponent == eachSection)]]