other
createFormDefinition
	| application def |

	application := testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.

	def := testRoot 
		buildPublishedFormNamed: 'test-2' 
		title: 'Test 2'
		withXml: testRoot newDefinitionTemplate formDefinition_agesic_test_2 
		in: application.

	def storeInApplication.