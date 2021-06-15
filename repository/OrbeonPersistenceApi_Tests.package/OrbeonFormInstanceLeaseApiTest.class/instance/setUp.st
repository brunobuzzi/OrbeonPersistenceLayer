other
setUp

	super setUp.

	apiOperation := self defaultOrbeonApiClass newOn: self systemRoot withXml: self createLeaseXmlInfoForBruno id: ''.
	apiOperation appName: 'agesic';
		formName: 'energy-recursive'.