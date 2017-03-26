form instances
getAllSectionsIn: anOrderedCollection
	"The receiver append all section definition to collection argument <anOrderedCollection>"

	anOrderedCollection addAll: sectionDefinitions.

	sectionDefinitions do: [:each | 
		each getAllSectionsIn: anOrderedCollection].

	^anOrderedCollection