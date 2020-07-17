registry operations
unregisterDefinitionNamed: aString
	"Unregister from registry <FormDefinitionRegistry> the definition named <aString> if absent answer nil"

	^definitionsRegistry removeKey: aString ifAbsent: [nil]