other
getAllDefinitions
	"Answer a collection with ALL form definitions where the search is applied"

	^application getAllDefinitionsNamed: self formName withVersion: version ifNone: [#()]