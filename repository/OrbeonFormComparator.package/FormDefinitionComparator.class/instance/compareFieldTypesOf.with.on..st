other
compareFieldTypesOf: aSectionDefinitionOne with: aSectionDefinitionTwo on: anOrderedCollection
	"The receiver compare the field type's of section <aSectionDefinitionOne> with the field type's of section <aSectionDefinitionTwo>"

	aSectionDefinitionOne getAllFieldDefinitions do: [:fieldDefinitionOne |
		(aSectionDefinitionTwo getAllFieldDefinitions detect: [:each | each name =  fieldDefinitionOne name] ifNone: [nil]) 
		ifNotNil: [:fieldDefinitionTwo | | typeOne typeTwo |
			typeOne := aSectionDefinitionOne classOf: fieldDefinitionOne name.
			typeTwo := aSectionDefinitionTwo classOf: fieldDefinitionTwo name.
			(typeOne == typeTwo)
			ifFalse: [
			anOrderedCollection add: 
				(FieldTypeNotEqual new 
					form: aSectionDefinitionOne formDefinition; 
					field: fieldDefinitionOne name; 
					typeOne: fieldDefinitionOne type; 
					typeTwo: fieldDefinitionTwo type; 
					yourself)].
		]
	].