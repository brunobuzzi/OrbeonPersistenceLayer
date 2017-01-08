form instances
getDraftWithId: aString

	^(drafts at: aString ifAbsent: [^nil]) last