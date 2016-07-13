indexes
createIndexForFieldNamed: fieldName
	"The receiver create (initialization - executed only once) an Index for the field named <fieldName>.
	The index is created if the field is a search field."

	fieldInstances at: fieldName ifAbsent: [^NoFieldNameException signal: 'There is no field named [', fieldName, '].'].

	(self isSearchField: fieldName)
	ifFalse: [^IsNotSearchFieldException signal: 'The field named [', fieldName, '] is not a Search field --> no index can be created.'].

	self createIndexForFieldNamed: fieldName on: (fieldInstances at: fieldName) "aRcIdentityBag"