other
selectedLateralItem: newValue

	super selectedLateralItem: newValue.

	self addSearchValue: '' named: 'form-name'.

	self setClassSide.

	^newValue