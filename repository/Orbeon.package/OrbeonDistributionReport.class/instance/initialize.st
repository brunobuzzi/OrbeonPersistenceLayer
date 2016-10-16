other
initialize

	super initialize.

	name := ''.
	description := ''.
	createdTime := TimeStamp now.
	rootDistribution := OrderPreservingDictionary new.