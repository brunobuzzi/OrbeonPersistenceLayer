other
getAllDrafts
	"The receiver answer a collection with all drafts of ALL published definitions."
	| drafts |

	drafts := OrderedCollection new.

	(application getAllDefinitionsNamed: formName withVersion: version ifNone: [^#()]) 
		do: [:each | drafts addAll: (each getAllDraftsFor: user orGroup: group)].

	^drafts