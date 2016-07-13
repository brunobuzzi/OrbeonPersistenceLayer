get sections
getRepeatableComplexSections

	^sections select: [:each | each isRepeatableComplex]