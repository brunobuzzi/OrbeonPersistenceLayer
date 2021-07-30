other
setUp

	super setUp.

	apiOperation := self defaultOrbeonApiClass newOn: testRoot withXml: self newInstanceTemplate formInstance_agesic_energy_recursive id: UUID new asString.
	apiOperation appName: 'agesic';
		formName: 'energy-recursive';
		version: 1;
		isValid: true;
		user: 'bruno';
		modifiedUser: 'bruno'; 
		group: 'admin'.