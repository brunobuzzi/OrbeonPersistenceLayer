get sections
getRepeatableSimpleSections

	^sections select: [:each | each isRepeatableSimple]