indexes-fields
createIndexForFieldNamed: fieldName on: aRcIdentityBag
	"The receiver create (initialization - executed only once) an Index for the field named <fieldName>.
	If the collection size <= 2000 then do nothing.
	If an error occur while creating the index then do nothing"

	^self createIndexForFieldNamed: fieldName 
			on: aRcIdentityBag 
			onSmallCollection: []
			onError: []