other
getDBStringForInstanceDefinitionWithId: id

	^self execute: (mySqlReader sqlGetInstanceDefinitionWithId: id)