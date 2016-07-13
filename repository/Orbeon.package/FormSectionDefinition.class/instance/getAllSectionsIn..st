other
getAllSectionsIn: anOrderedCollection

	anOrderedCollection addAll: subSections.

	subSections do: [:each | 
		each getAllSectionsIn: anOrderedCollection].