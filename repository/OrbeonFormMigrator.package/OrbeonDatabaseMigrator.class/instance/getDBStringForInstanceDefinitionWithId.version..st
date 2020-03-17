sql queries
getDBStringForInstanceDefinitionWithId: id version: version

	^self execute: (sqlReader sqlGetInstanceDefinitionWithId: id version: version)