other
getDBStringForInstanceDefinitionWithId: id version: version

	^self execute: (mySqlReader sqlGetInstanceDefinitionWithId: id version: version)