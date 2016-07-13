Accessing
getAllSubSectionsOn: anOrderedCollection

	anOrderedCollection add: self.

	subSections do: [:each | each getAllSubSectionsOn: anOrderedCollection].

	^anOrderedCollection