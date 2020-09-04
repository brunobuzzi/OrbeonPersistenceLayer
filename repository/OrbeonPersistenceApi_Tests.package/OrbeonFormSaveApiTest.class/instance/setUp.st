other
setUp

	super setUp.

	apiOperation := self defaultOrbeonApiClass newWithXml: OrbeonFormInstanceTemplate form_energy_survey_recursive id: UUID new asString.
	apiOperation appName: 'agesic';
		formName: 'energy-recursive';
		version: 1;
		isValid: true;
		user: 'bruno';
		modifiedUser: 'bruno'; 
		group: 'admin'.