other
printShortId

	id ifNil: [^''].

	^(id size >= 5) ifTrue: [id first: 5] ifFalse: [id]