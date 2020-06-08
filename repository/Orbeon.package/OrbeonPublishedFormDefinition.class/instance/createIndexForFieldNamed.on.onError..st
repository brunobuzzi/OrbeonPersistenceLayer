indexes-fields
createIndexForFieldNamed: fieldName on: aRcIdentityBag onError: aBlock
	"The receiver create (initialization - executed only once) an Index for the field named <fieldName>.
	If the collection size <= 2000 then raise <anCollectionWithout2000ElementsException> exception.
	If an error occur while creating the index then evaluates the niladic block <errorBlock>"

	^self createIndexForFieldNamed: fieldName 
			on: aRcIdentityBag 
			onSmallCollection: [CollectionWithout2000ElementsException signal: 'The collection should have at least 2000 elements to create an index on it.']
			onError: aBlock