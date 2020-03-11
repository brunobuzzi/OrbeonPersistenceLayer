other
getDatabaseReaderFrom: aString

	^self getAllDatabaseReaders detect: [:each | each databaseName = aString] ifNone: [nil]