other
setUp

	super setUp.

	apiOperation := self defaultOrbeonApiClass newWithXml: self createLeaseXmlInfoForBruno id: ''.
	apiOperation appName: 'agesic';
		formName: 'energy-recursive'.