setUp
setUp

	super setUp.

	application := testRoot getExistingApplicationOrCreateNewNamed: 'agesic'.

	form := self buildPublishedFormStructureFrom: self newDefinitionTemplate formDefinition_agesic_test_all_types_4 
					name: 'test' 
					in: 'agesic' 
					title: 'Test'.
	"form buildForm"