other
searchForm
	"Search in the list of object which object answer true to the entered filter"

	endSearchField ifNil: [^self searchEqual2].

	^self searchByRange