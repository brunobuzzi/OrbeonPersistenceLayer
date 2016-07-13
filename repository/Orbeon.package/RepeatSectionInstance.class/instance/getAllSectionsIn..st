other
getAllSectionsIn: anOrderedCollection

	"we do NOT include the repeatable section itself but rather the section iterations (instances of NormalSectionInstance)"

	"anOrderedCollection add: self." 

	sectionIterations do: [:each | 
		each getAllSectionsIn: anOrderedCollection].