other
compareGridsOf: aSectionDefinitionOne with: aSectionDefinitionTwo on: anOrderedCollection
	"The receiver compare the Grid's of section <aSectionDefinitionOne> and section <aSectionDefinitionTwo> and store difference on <anOrderedCollection>"

	aSectionDefinitionOne gridDefinitions do: [:each | 
		aSectionDefinitionTwo 
			getGridDefinitionNamed: each name 
			ifNone: [anOrderedCollection 
							add: (FormGridDoesNotExist new 
										form: aSectionDefinitionOne formDefinition;
										grid: each;
										yourself)].
	].

	aSectionDefinitionTwo gridDefinitions do: [:each | 
		aSectionDefinitionOne 
			getGridDefinitionNamed: each name 
			ifNone: [anOrderedCollection 
							add: (FormGridDoesNotExist new 
										form: aSectionDefinitionTwo formDefinition;
										grid: each;
										yourself)].
	].