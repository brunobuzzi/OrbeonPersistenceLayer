other
initialize

	super initialize.

	currentVersions := OrderedCollection new.
	oldVersions := OrderedCollection new.
	savedDefinitions := OrderedCollection new.
	instancesSet := RcIdentitySet new.
	instancesVersionSet := Dictionary new.