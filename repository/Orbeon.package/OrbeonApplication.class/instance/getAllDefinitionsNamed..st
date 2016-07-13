all forms
getAllDefinitionsNamed: aString
	"Answer a collection with all versions of OrbeonFormDefinition named <aString> if none answer an empty collection.
	It can be more than one definition with version 1 --> answer the latest version 1"

	^self getAllDefinitionsNamed: aString ifNone: [OrderedCollection new].