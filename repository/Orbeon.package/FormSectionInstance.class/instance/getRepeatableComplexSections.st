get sections
getRepeatableComplexSections

	^subSections select: [:each | each isRepeatableComplex]