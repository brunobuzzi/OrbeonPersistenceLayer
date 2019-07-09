other
initialize

	super initialize.

	currentVersions := OrderedCollection new.
	oldVersions := OrderedCollection new.
	savedDefinitions := Dictionary new.
	instancesSet := RcIdentityBag new.
	instancesVersionSet := Dictionary new.