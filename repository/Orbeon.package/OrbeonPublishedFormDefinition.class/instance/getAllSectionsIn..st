form instances
getAllSectionsIn: anOrderedCollection

	anOrderedCollection addAll: sectionDefinitions.

	sectionDefinitions do: [:each | 
		each getAllSectionsIn: anOrderedCollection].

	^anOrderedCollection