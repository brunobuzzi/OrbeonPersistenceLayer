other
doesNotUnderstand: aMessageDescriptor
	"The receiver overide this method in order to respond to messages that are equal in name to any of it's field name"

	^(self hasFieldNamed: aMessageDescriptor selector)
	ifTrue: [(self valueAt: aMessageDescriptor selector asString) value]
	ifFalse: [super doesNotUnderstand: aMessageDescriptor]