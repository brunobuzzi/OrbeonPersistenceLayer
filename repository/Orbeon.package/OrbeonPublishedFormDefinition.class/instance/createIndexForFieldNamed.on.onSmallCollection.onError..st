indexes-fields
createIndexForFieldNamed: fieldName on: aRcIdentityBag onSmallCollection: smallCollectionBlock onError: errorBlock
	"The receiver create (initialization - executed only once) an Index for the field named <fieldName>.
	If the collection size <= 2000 then evaluates the niladic block <smallCollectionBlock>.
	If an error occur while creating the index then evaluates the niladic block <errorBlock>"

	(aRcIdentityBag size >= 2000) "see GemStone/S manual on indexes"
	ifFalse: [^smallCollectionBlock value]. 

	[GsIndexSpec new
		equalityIndex: 'each.value' lastElementClass: (self stTypeOf: fieldName) options: self defaultIndexOptions;
		createIndexesOn: aRcIdentityBag] on: Error do: [:ex | ^errorBlock value].