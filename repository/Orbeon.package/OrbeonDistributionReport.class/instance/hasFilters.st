other
hasFilters
	"Answer whether or not the receiver has any filters.
	If answer <false> then report is about an entire collection."

	^startDate notNil or: [endDate notNil or: [conditionStringBlock notNil]]