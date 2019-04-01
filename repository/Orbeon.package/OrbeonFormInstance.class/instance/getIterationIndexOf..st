other
getIterationIndexOf: aFormSectionInstance
	"The receiver answer its iteration index of section <aFormSectionInstance>"

	^(sections select: [:each | each name = aFormSectionInstance name]) indexOf: aFormSectionInstance ifAbsent: [0]