other
setUp

	super setUp.

	apiOperation := OrbeonFormInstanceDuplicateApi newWithXml: OrbeonFormInstanceTemplate form_energy_survey_recursive id: UUID new asString.
	apiOperation appName: 'agesic';
		formName: 'energy-recursive';
		version: 1.