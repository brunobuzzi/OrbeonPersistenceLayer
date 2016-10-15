distribution with range
getQuantityDistributionForFieldNamed: fieldName range: range
	"Answer a Dictionary where the key is a value of field <fieldName> and value is the percentage of value in the whole.
	Where the values of the fields are in the range <range>.
	Note: range value must be compatible with fields values "

	^self getQuantityDistributionForFieldCollection: (self fieldInstancesOf: fieldName) range: range