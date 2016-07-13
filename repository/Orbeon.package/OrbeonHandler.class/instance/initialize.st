other
initialize

	super initialize.

	instanceDefinitions := OrderedCollection new.
	synchronizations := Dictionary new.

	mySqlReader := self defaultMySqlClass new.
	formReader := OrbeonXPathFormReader new.