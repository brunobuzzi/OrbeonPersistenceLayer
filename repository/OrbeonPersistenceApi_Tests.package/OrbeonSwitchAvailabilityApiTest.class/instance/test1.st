other
test1

	self assert: form isAvailable.

	apiOperation := OrbeonSwitchAvailabilityApi newFor: WAOrbeonPersistenceLayer new.

	apiOperation appName: 'test';
		formName: 'test';
		doIt.

	self deny: form isAvailable.

	apiOperation doIt.

	self assert: form isAvailable.