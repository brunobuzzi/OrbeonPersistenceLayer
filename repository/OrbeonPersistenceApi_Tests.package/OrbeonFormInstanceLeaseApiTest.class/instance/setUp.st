other
setUp

	super setUp.

	apiOperation := self defaultOrbeonApiClass newOn: testRoot withXml: self createLeaseXmlInfoForBruno id: ''.
	apiOperation appName: 'agesic';
		formName: 'energy-recursive'.