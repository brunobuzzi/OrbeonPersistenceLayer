other
createFormDefinition
	| application def |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.
	def := (self defaultPublishedFormDefinitionClass newNamed: 'test-2' inAppNamed: 'agesic')
			xmlString: self newDefinitionTemplate formDefinition_agesic_test_2;
			id: UUID new asString;
			title: 'Test 2';
			buildForm;
			yourself.

	def storeInApplication.