migration operations
converToTimeStamp: aDate

	^(TimeStamp date: aDate time: (Time fromString: '0:00:00')) printMySqlString