stream
atEnd

	^currentStream isNil or:[currentStream atEnd or: [formsInRange size = self getTotalIntancesToSearch]]