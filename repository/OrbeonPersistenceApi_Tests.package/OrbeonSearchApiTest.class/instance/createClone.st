other
createClone
	| cloneOperation uuid application |

	uuid := UUID new asString.
	cloneOperation := OrbeonFormDefinitionDuplicateApi newOn: testRoot withXml: testRoot newDefinitionTemplate formDefinition_agesic_test_all_types_4 id: uuid.
	cloneOperation
		group: 'admin';
		user: 'admin';
		setUserCredentialsFrom: nil.

	cloneOperation doIt.

	application := testRoot applicationNamed: 'agesic'.

	^application getSavedDefinitionWithId: uuid ifNone: [self assert: false]