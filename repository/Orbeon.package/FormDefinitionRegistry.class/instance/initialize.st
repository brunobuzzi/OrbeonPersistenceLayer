other
initialize

	super initialize.

	currentVersions := OrderedCollection new.
	oldVersions := OrderedCollection new.
	savedDefinitions := OrderPreservingDictionary new.