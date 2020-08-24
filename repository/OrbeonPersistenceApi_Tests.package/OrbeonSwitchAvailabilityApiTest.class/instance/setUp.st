other
setUp

	super setUp.

	self createFormStructure.

	apiOperation := OrbeonSwitchAvailabilityApi new.
	apiOperation appName: 'agesic';
		formName: 'test-all-types-4'.