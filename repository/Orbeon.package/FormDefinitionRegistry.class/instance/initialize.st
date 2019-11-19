other
initialize

	super initialize.

	currentVersions := OrderedCollection new.
	oldVersions := OrderedCollection new.
	savedDefinitions := Dictionary new.
	instancesSet := RcIdentitySet new.
	instancesVersionSet := Dictionary new.