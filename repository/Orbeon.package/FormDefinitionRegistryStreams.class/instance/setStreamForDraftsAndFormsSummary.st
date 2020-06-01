building streams
setStreamForDraftsAndFormsSummary
	| drafts draftsShift |

	drafts := self getAllDrafts.

	draftsShift := self pageFrom - drafts size.
	"the summary is only drafts or a combination of drafts and instances"
	(draftsShift <= 0) ifTrue: [self setStreamForDraftsAndFormsSummaryOn: drafts].

	self setStreamForFormsFrom: draftsShift to: ((draftsShift - 1) + pageSize - drafts size)