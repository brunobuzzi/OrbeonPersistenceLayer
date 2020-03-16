other
initialize

	super initialize.

	mySqlReader := self defaultMySqlClass new.
	formReader := self defaultXFormReaderClass new.