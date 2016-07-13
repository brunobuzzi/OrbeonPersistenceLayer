other
parentSectionIsRepeatable
	"Answer whether or not the parent section of the receiver is repeatable"

	parentSection ifNil: [^false].

	^parentSection isRepeatable