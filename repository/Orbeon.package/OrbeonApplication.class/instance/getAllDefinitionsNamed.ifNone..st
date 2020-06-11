all forms
getAllDefinitionsNamed: aString ifNone: aBlock
	"Answer a collection with all latest versions of OrbeonFormDefinition named <aString> if none then evaluate <aBlock>.
	It can be more than one definition with version 1 --> answer the latest version 1"
	| registry |

	(self hasRegistryForFormNamed: aString) ifFalse: [^aBlock value].

	registry := self registryForFormNamed: aString.

	^registry getAllDefinitionsNamed: aString ifNone: aBlock