output
getValueFrom: node ifNone: aBlock

	node stringNodes isEmpty ifTrue: [^aBlock value].

	^node stringNodes last string