sql queries
getDBStringForInstanceDefinitionWithId: id

	^self execute: (sqlReader sqlGetInstanceDefinitionWithId: id)