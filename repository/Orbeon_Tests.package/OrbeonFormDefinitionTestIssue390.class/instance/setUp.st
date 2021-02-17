other
setUp

	super setUp.

	self getOrbeonWebServerConfiguration orbeonFormReaderClass: OrbeonXPathFormReader2019_1.

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'gs'.