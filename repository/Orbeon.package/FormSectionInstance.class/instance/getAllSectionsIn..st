other
getAllSectionsIn: anOrderedCollection

	anOrderedCollection add: self.

	subSections do: [:each | 
		each getAllSectionsIn: anOrderedCollection].