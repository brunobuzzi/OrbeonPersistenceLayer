other
selectedLateralItem: newValue

	super selectedLateralItem: newValue.

	self setClassSide.

	^newValue