other
getSubSectionIndex

	parentSection ifNil: [^formInstance getSubSectionIndexOf: self].

	^((parentSection subSectionsSelect: [:each | each name = name]) indexOf: self ifAbsent: [0]) printString