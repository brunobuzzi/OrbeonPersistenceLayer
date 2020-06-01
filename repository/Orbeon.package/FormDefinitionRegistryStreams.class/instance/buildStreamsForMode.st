building streams
buildStreamsForMode

	(mode = #draft) ifTrue: [^self buildStreamsForDraftsSearch].

	(mode = #noSearch) ifTrue: [^self buildStreamsForRegularSummaryPaging].

	(mode = #search) ifTrue: [^self buildStreamsForSearchSummaryPaging].