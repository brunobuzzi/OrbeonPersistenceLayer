parent section
parentSectionIsRepeatable
	"Answer whether or not the parent section of the receiver is repeatable"

	self parentSection ifNil: [^false].

	^self parentSection isRepeatable