published forms
hasDefinitionNamed: aString
	"Answer whether or not the receiver has a form definiton named <aString>"

	^(self hasRegistryForFormNamed: aString) and:[(self registryForFormNamed: aString) hasVersions]