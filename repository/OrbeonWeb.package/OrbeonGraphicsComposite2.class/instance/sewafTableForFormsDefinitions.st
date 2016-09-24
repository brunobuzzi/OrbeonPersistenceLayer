other
sewafTableForFormsDefinitions
	| table |

	table := (self hasTableNamed: 'FormsDefinitions') 
		ifTrue: [self getTableNamed: 'FormsDefinitions' ifAbsent: []] 
		ifFalse: [self initializeSewafTableForFormsDefinitions].

	table selectedObject: selectedDefinition.

	^table