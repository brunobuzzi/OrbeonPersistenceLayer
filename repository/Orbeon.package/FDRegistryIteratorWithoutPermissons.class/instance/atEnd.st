stream
atEnd
	"Answer whether or not the receiver is atEnd.
	Is atEnd if: the iteration is the last in <versions> and the <currentStream> is atEnd (no more instances availables)"

	^(currentDefinition == versions last) and: [currentStream atEnd]