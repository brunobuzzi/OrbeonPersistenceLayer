other
setUp
	| formId |

	super setUp.

	formId := UUID new asString.

	self createFormInstanceWithId: formId creator: 'bruno' group: 'admin'.

	apiOperation := self defaultOrbeonApiClass newOn: testRoot withId: formId.
	apiOperation appName: 'agesic';
		formName: 'test-all-types-4';
		group: 'admin';
		user: 'bruno'.