mysql to gs
getAllFormsDefinitionNameOf: appName
	"Answer a collection of <String> with all forms definition of Orbeon Application <appName> stored in MySQL"

	^self execute: (mySqlReader sqlGetAllFormsDefinitionOf: appName)