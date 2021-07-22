other
createFormDefinition
	| application form |

	application := testRoot getExistingApplicationOrCreateNewNamed: 'migration'.
	application unregisterDefinitionNamed: 'all-fields-types'.
	form := application 
					definitionNamed: 'all-fields-types' 
					ifNone: [self buildPublishedFormStructureFrom: self newDefinitionTemplate  formDefinition_migration_all_fields_types name: 'all-fields-types' in: 'migration' title: 'Test'].

	^form