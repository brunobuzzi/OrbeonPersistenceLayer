other
getAllDatabaseReaders

	^self allSubclasses select: [:each | each subclasses isEmpty]