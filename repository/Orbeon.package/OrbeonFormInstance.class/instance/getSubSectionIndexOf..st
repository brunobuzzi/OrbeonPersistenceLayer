other
getSubSectionIndexOf: aFormSectionInstance

	^((sections select: [:each | each name = aFormSectionInstance name]) indexOf: aFormSectionInstance ifAbsent: [0]) printString