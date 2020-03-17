sql queries
getAllFormsDefinitionNameOf: appName
	"Answer a collection of <String> with all forms definition of Orbeon Application <appName> stored in Orbeon relational database"

	^self execute: (sqlReader sqlGetAllFormsDefinitionOf: appName)