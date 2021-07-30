other
setUp

	super setUp.

	testRoot := OrbeonSystemRoot new.
	migrator := self defaultMigratorClass newOn: testRoot.