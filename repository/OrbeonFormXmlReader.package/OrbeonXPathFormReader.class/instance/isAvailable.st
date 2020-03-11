metadata
isAvailable
	"Answer whether or not the form definition is available or not"
	| node |

	node := self getXmlAvailableNodeIfNone: [^true].

	node strings isEmpty ifTrue: [OrbeonInvalidXMLException signal: '<available> node value is invalid'].

	^node strings last = 'true'