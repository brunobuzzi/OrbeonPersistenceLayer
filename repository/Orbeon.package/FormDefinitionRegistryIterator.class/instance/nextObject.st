stream
nextObject
	"The receiver answer the next element <anOrbeonFormInstance> if none answer <nil>"
	| id |

	id := self next. "get the id of the form"

	^id 
		ifNil: [nil] 
		ifNotNil: [:idValue | currentDefinition getInstanceWithId: idValue]