stream
atEnd
	"Answer whether or not the receiver is atEnd"

	^currentStream isNil or: [currentStream atEnd]