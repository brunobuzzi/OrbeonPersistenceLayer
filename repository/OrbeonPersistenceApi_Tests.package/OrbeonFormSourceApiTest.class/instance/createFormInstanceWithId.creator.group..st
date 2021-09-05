other
createFormInstanceWithId: formId creator: username group: group

	testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.

	self createFormStructure.

	(self defaultOrbeonSaveApiClass newOn: testRoot withXml: testRoot newInstanceTemplate formInstance_agesic_test_all_types_2 id: formId)
		appName: 'agesic';
		formName: 'test-all-types-4';
		version: 1;
		isValid: true;
		user: username;
		modifiedUser: username; 
		group: group;
		doIt