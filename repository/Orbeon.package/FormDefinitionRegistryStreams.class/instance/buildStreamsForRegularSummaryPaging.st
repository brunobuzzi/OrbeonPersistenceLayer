building streams
buildStreamsForRegularSummaryPaging
	| draftsNodes | 

	draftsNodes := xmlQuery descendentElementsNamed: 'drafts'.

	(draftsNodes notEmpty and: [((draftsNodes first attributeAt: 'for-never-saved-document') = 'true') and: [draftsNodes first contentString = 'only']]) "drafts to display"
	ifTrue: [^self setStreamForDraftsSummary].

	^self setStreamForDraftsAndFormsSummary