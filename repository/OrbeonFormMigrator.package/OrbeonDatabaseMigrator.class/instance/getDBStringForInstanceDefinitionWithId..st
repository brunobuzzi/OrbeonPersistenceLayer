other
getDBStringForInstanceDefinitionWithId: id

	^self execute: (sqlReader sqlGetInstanceDefinitionWithId: id)