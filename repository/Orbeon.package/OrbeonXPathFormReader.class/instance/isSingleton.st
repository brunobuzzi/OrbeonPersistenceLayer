metadata
isSingleton
	"Answer whether or not the form definition is a Singleton form or not"
	| node |

	node := self getXmlSingletonNodeIfNone: [^false].

	node strings isEmpty ifTrue: [OrbeonInvalidXMLException signal: '<singleton> node value is invalid'].

	^node strings last = 'true'