setUp
setUp
	| library |

	super setUp.

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'gs'.

	library := self buildFormStructureFrom: self newDefinitionTemplate formDefinition_gs_library
							name: 'library'
							version: 1 
							in: 'gs' 
							title: 'Library'.

	form := self buildFormStructureFrom: self newDefinitionTemplate formDefinition_gs_test_library
							name: 'test-library'
							version: 1 
							in: 'gs' 
							title: 'Test Library'.