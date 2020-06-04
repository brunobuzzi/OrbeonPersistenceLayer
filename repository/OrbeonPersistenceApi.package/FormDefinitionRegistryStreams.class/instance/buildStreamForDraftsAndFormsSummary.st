streams building
buildStreamForDraftsAndFormsSummary
	| drafts draftsShift pageToShift |

	drafts := self getAllDrafts asSortedCollection: [:a :b | b modifiedTime <= a modifiedTime].

	draftsShift := self pageFrom - drafts size.
	"the summary is only drafts or a combination of drafts and instances"
	(draftsShift <= 0) ifTrue: [self buildStreamForDraftsSummaryOn: (drafts allButFirst: self pageFrom)].

	pageToShift := self pageTo - drafts size "+ 1".
	(draftsShift >= pageToShift) ifTrue: [^self].

	self buildStreamForFormsFrom: draftsShift to: pageToShift