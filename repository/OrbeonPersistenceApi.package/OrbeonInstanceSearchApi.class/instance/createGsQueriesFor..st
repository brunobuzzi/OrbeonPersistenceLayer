other
createGsQueriesFor: collectionOfOrbeonQueryNode
	"The receiver answer a Dictionary of GsQuery from the collection <collectionOfOrbeonQueryNode> of query nodes <OrbeonQueryNode>.
	The dictionary's keys is the name of the field and the value is the GsQuery"
	| nodesWithQuery gsQueries |

	gsQueries := Dictionary new.
	nodesWithQuery := collectionOfOrbeonQueryNode select: [:each | each isSearchAndHasValue].
	nodesWithQuery isEmpty ifTrue: [^self createGenericGsQueriesFor: collectionOfOrbeonQueryNode].

	nodesWithQuery do: [:each | | stream |
		stream := PrintStream on: String new.
		((lastFormDefinition stTypeOf: each name) == String)
		ifTrue: [stream nextPutAll: 'each.value = ''', each value, ''' & ']
		ifFalse: [stream nextPutAll: 'each.value = ', each value, ' & '].
		gsQueries at: each name put: (GsQuery fromString: (stream contents allButLast: 3)).
		stream close.].

	^gsQueries