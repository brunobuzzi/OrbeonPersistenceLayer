other
satisfyQuery: collectionOfOrbeonQueryNode
	"Answer whether or not the receiver satisfy the query node <OrbeonQueryNode> in collection <collectionOfOrbeonQueryNode>.
	The search is AND"
	| queryFields |

	"collect the values of each field contained in <collectionOfOrbeonQueryNode>"
	queryFields := self getValueOfFields: (collectionOfOrbeonQueryNode collect: [:each | each name]).

	"all satisfy node value = field value (AND)"
	collectionOfOrbeonQueryNode keysAndValuesDo: [:index :node |
		(node value = (queryFields at: index)) ifFalse: [^false]].


	^true