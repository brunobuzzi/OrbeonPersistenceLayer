other
createGenericGsQueriesFor: collectionOfOrbeonQueryNode
	"The receiver create the <GsQuery> for a generic search.
	The user has set a value to search but the field name is NOT know. Can be any field search.
	The generic search behave like OR search any match with any field is valid"
	| nodesWithQuery gsQueries |

	gsQueries := Dictionary new.
	nodesWithQuery := collectionOfOrbeonQueryNode select: [:each | each hasValueAndNoName].
	nodesWithQuery isEmpty ifTrue: [^#()].

	nodesWithQuery do: [:each | 
		each beGeneric. "set the query node as generic -like an OR search-"
		(application getAllSearchFieldsOf: formName) do: [:fieldName | | stream |
			stream := PrintStream on: String new.
			((lastFormDefinition stTypeOf: fieldName) == String)
			ifTrue: [stream nextPutAll: 'each.value = ''', each value, ''' & ']
			ifFalse: [stream nextPutAll: 'each.value = ', each value, ' & '].
			gsQueries at: fieldName put: (GsQuery fromString: (stream contents allButLast: 3)).
			stream close]].

	^gsQueries