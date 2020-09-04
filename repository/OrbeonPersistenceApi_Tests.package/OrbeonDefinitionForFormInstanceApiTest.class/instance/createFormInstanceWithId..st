other
createFormInstanceWithId: formId

	self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.

	self createFormStructure.

	(OrbeonFormSaveFinalApi newWithXml: OrbeonFormInstanceTemplate form_all_types_2 id:formId)
		appName: 'agesic';
		formName: 'test-all-types-4';
		version: 1;
		isValid: true;
		user: 'admin';
		modifiedUser: 'admin'; 
		group: 'admin';
		doIt