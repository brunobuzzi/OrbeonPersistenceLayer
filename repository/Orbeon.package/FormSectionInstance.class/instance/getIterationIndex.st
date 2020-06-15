other
getIterationIndex
	"The receiver answer its iteration index"

	parentSection ifNil: [^formInstance getIterationIndexOf: self].

	^(parentSection subSectionsSelect: [:each | each name = name]) indexOf: self ifAbsent: [0]