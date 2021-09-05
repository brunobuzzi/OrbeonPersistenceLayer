other
createFormInstanceWithId: formId

	testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.

	self createFormStructure.

	(OrbeonFormSaveFinalApi newOn: testRoot withXml: testRoot newInstanceTemplate formInstance_agesic_test_all_types_2 id:formId)
		appName: 'agesic';
		formName: 'test-all-types-4';
		version: 1;
		isValid: true;
		user: 'admin';
		modifiedUser: 'admin'; 
		group: 'admin';
		doIt