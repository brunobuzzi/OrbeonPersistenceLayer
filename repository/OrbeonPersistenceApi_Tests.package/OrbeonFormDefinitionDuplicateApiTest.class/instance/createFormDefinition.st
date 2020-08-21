other
createFormDefinition
	| application def |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.
	def := (OrbeonPublishedFormDefinition newNamed: 'test-2' inAppNamed: 'agesic')
			xmlString: OrbeonFormDefinitionTemplateUpTo2017_1 form_test_2;
			id: UUID new asString;
			title: 'Test 2';
			processXMLDefinitionFor: self getOrbeonXmlXpathUpto2017_1;
			yourself.

	def storeInApplication.