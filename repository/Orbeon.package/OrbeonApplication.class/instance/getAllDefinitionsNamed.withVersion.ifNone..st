all forms
getAllDefinitionsNamed: aString withVersion: versionNumber ifNone: aBlock
	"Answer a collection with all latest versions of OrbeonFormDefinition named <aString> if none then evaluate <aBlock>.
	It can be more than one definition with version 1 --> answer the latest version 1"

	^(self getAllDefinitionsNamed: aString ifNone: [^aBlock value]) select: [:each | each version = versionNumber]