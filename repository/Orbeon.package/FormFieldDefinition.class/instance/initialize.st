other
initialize

	super initialize.

	isSummary := false.
	isSearch := false.
	label := ''.
	type := ''.
	isAttachmentField := false.
	isAnnotationField := false.
	tabIndex := FormTabIndex for: self withIndex: 0.