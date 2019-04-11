other
getSubSectionIndex

	parentSection ifNil: [^formInstance getSubSectionIndexOf: self].

	^((parentSection subSections select: [:each | each name = name]) indexOf: self ifAbsent: [0]) printString