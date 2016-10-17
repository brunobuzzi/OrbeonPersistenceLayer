other
initialize

	super initialize.

	name := ''.
	description := ''.
	createdTime := TimeStamp now.
	secondsToConstruct := 0.
	isClosed := false.
	rootDistribution := OrderPreservingDictionary new.