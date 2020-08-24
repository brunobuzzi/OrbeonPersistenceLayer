other
setUp

	super setUp.

	apiOperation := OrbeonFormInstanceGetLeaseApi newWithXml: self createLeaseXmlInfoForBruno id: ''.
	apiOperation appName: 'agesic';
		formName: 'energy-recursive'.