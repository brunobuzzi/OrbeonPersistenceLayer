indexes-fields
removeIndexForFieldNamed: fieldName
	"The receiver remove the Index for the field named <fieldName>"
	| indexedCollection |

	fieldInstances at: fieldName ifAbsent: [^NoFieldNameException signal: 'There is no field named [', fieldName, '].'].

	indexedCollection := fieldInstances at: fieldName. "aRcIdentityBag"

	indexedCollection indexSpec removeIndexesFrom: indexedCollection.