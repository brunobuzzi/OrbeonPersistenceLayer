get sections
getRepeatableSimpleSections

	^subSections select: [:each | each isRepeatableSimple]