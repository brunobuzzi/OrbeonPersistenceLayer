other
setUp

	super setUp.

	apiOperation := OrbeonFormInstanceDuplicateApi newOn: testRoot withXml: self newInstanceTemplate formInstance_agesic_energy_recursive id: UUID new asString.
	apiOperation appName: 'agesic';
		formName: 'energy-recursive';
		version: 1.