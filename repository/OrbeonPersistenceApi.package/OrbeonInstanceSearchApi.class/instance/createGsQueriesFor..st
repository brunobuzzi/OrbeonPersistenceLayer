queries
createGsQueriesFor: collectionOfOrbeonQueryNode
	"The receiver answer a Dictionary of GsQuery from the collection <collectionOfOrbeonQueryNode> of query nodes <OrbeonQueryNode>.
	The dictionary's keys is the name of the field and the value is the GsQuery"
	| nodesWithQuery gsQueries |

	gsQueries := Dictionary new.
	nodesWithQuery := collectionOfOrbeonQueryNode select: [:each | each isSearchAndHasValue].
	nodesWithQuery isEmpty ifTrue: [^self createGenericGsQueriesFor: collectionOfOrbeonQueryNode].

	nodesWithQuery do: [:each | | stream type gsQuery stValue |
		stream := PrintStream on: String new.
		type := lastFormDefinition stTypeOf: each name.
		searchValues at: each name put: each value.
		stValue := (type == String) ifTrue: [each value] ifFalse: [type fromOrbeonString: each value].
		stream nextPutAll: '(each.value = stValue) & '.
		queryString := stream contents allButLast: 3.
		gsQuery := GsQuery fromString: queryString. 
		gsQuery bind: 'stValue' to: stValue.
		gsQueries at: each name put: gsQuery.
		stream close.].

	^gsQueries