form instances
getAllDraftWithId: aString ifNone: aBlock

	^drafts at: aString ifAbsent: [^aBlock value]