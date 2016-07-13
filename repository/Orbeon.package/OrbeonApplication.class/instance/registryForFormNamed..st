registry operations
registryForFormNamed: aString
	"Answer the registry <FormDefinitionRegistry> for the form definition named <aString> if none the raise an Exception"

	^self registryForFormNamed: aString ifNone: [FormRegistryNotExistException signal: 'No registry available for :', aString]