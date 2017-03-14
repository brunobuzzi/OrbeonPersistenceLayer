other
initialize

	super initialize.

	fieldDefinitions := Dictionary new.
	gridDefinitions := Dictionary new.
	isRepeatable := false.
	subSections := OrderedCollection new.
	tabIndex := FormTabIndex for: self withIndex: 0.