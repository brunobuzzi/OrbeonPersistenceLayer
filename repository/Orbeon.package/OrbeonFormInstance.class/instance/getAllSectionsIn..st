form-field-value
getAllSectionsIn: anOrderedCollection
	"Answer all sections of the receiver in parameter <anOrderedCollection>"

	sections do: [:each | 
		each getAllSectionsIn: anOrderedCollection].

	^anOrderedCollection