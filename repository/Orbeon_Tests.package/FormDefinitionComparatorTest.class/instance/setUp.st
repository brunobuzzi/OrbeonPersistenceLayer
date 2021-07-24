other
setUp

	super setUp.

	testRoot := OrbeonSystemRoot new.

	application := testRoot getExistingOrbeonApplicationOrCreateNewNamed: 'agesic'.

	testRoot registerApplication: application.