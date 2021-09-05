other
createFormDefinition
	| application form |

	application := testRoot getExistingApplicationOrCreateNewNamed: 'migration'.
	application unregisterDefinitionNamed: 'all-fields-types'.
	form := application 
					definitionNamed: 'all-fields-types' 
					ifNone: [testRoot 
									buildPublishedFormNamed: 'all-fields-types' 
									title: 'Test' 
									withXml: testRoot newDefinitionTemplate formDefinition_migration_all_fields_types 
									in: application].

	^form