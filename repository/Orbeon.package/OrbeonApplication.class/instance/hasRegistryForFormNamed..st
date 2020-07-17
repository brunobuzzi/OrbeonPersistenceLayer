registry operations
hasRegistryForFormNamed: aString
	"Answer whether or not the receiver has a registry for form definition named <aString>"

	^definitionsRegistry includesKey: aString