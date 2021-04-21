other
setUp

	super setUp.

	apiOperation := OrbeonFormInstanceDuplicateApi newWithXml: self newInstanceTemplate formInstance_agesic_energy_recursive id: UUID new asString.
	apiOperation appName: 'agesic';
		formName: 'energy-recursive';
		version: 1.