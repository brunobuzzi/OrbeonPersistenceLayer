registry operations
registryForFormNamed: aString ifNone: aBlock
	"Answer the registry <FormDefinitionRegistry> for the definition named <aString> if none then evaluate <aBlock>"

	^definitionRegistry at: aString ifAbsent: aBlock