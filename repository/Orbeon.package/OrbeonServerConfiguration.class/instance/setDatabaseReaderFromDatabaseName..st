sql reader
setDatabaseReaderFromDatabaseName: aString

	^self setDatabaseReader: (OrbeonDatabaseReader getDatabaseReaderFrom: aString) new