queries
doIt
	"The receiver execute the query defined in it's self. Storing the result in <resultCollection>"

	"if there is NO query nodes --> Orbeon is searching for a draft for a given form <id>"
	queryNodes isEmpty ifTrue: [mode:= #draft. ^self executeQuerySearchFormWithDraft]. 

	(queryNodes allSatisfy: [:each | each value == nil]) "if has query nodes but Without Values --> Generic Summary without Search"
	ifTrue: [mode:= #noSearch. ^self executeQueryWithoutSearchCriteria].

	mode := #search.
	^self executeQueryWithSearchCriteria "if has query nodes but With Values --> Summary with Field Search"