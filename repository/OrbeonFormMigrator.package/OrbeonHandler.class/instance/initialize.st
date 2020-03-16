other
initialize

	super initialize.

	synchronizations := Dictionary new.

	mySqlReader := self defaultMySqlClass new.
	formReader := self defaultXFormReaderClass new.