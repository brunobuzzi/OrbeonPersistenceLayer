distribution by fields
reportValueDistributionForFieldCollection: fieldInstancesCollection
	"Answer a Dictionary where the key is a value of field <fieldName> and value is the percentage of value in the whole"
	| distribution fieldName |

	fieldName := fieldInstancesCollection ifEmpty: ['no-instances'] ifNotEmpty: [fieldInstancesCollection first name].

	distribution := self getValueDistributionForFieldCollection: fieldInstancesCollection.
	
	^OrbeonFieldDistributionReport 
			applicationName: self getApplicationName 
			formName: self formName 
			version: self version 
			fieldName: fieldName 
			distribution: distribution