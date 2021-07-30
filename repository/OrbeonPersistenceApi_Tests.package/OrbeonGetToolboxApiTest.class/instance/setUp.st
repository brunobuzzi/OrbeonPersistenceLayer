other
setUp

	super setUp.

	apiOperation := OrbeonGetToolboxApi newOn: testRoot.
	apiOperation appName: 'ue'.