other
getDraftWithId: aString ifNone: aBlock
	| currentDrafts |

	currentDrafts := drafts at: aString ifAbsent: [^aBlock value].

	currentDrafts isEmpty ifTrue: [^aBlock value].

	^currentDrafts last