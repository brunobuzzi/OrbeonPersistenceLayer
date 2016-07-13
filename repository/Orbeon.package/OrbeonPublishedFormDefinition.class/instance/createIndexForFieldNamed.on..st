indexes
createIndexForFieldNamed: fieldName on: aRcIdentityBag
	"The receiver create (initialization - executed only once) an Index for the field named <fieldName>"

	(aRcIdentityBag size >= 2000) "see GemStone/S manual on indexes"
	ifFalse: [^CollectionWithout2000ElementsException signal: 'The collection should have at least 2000 elements to create an index on it.']. 

	GsIndexSpec new
		equalityIndex: 'each.value' lastElementClass: (self stTypeOf: fieldName);
		createIndexesOn: aRcIdentityBag.