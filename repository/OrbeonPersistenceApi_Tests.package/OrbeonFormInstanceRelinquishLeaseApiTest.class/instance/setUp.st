other
setUp

	super setUp.

	apiOperation := OrbeonFormInstanceRelinquishLeaseApi newWithXml: self createLeaseXmlInfoForBruno id: ''.
	apiOperation appName: 'agesic';
		formName: 'energy-recursive'.