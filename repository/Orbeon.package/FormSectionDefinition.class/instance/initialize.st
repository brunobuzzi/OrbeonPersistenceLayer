other
initialize

	super initialize.

	name := ''.
	label := ''.
	fieldDefinitions := OrderPreservingDictionary new.
	gridDefinitions := OrderPreservingDictionary new.
	isRepeatable := false.
	subSections := OrderPreservingDictionary new.