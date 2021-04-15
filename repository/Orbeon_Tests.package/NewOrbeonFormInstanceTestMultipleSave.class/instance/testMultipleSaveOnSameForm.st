tests
testMultipleSaveOnSameForm
	| formDefinition |

	formDefinition := application definitionNamed: 'issue-243' ifNone: [self assert: false].

	form := (OrbeonFormInstance newFor: formDefinition withId: UUID new asString)
					definition: formDefinition;
					xmlString: (self newInstanceTemplate form_issu243_v1_name: 'John' surname: 'McCarthy');
					buildForm;
					yourself.

	self assert: formDefinition getAllRegistryInstances size equals: 1.

	form buildForm.
	self assert: formDefinition getAllRegistryInstances size equals: 1.
	self assert: formDefinition instancesSetSize equals: 1.

	form buildForm; buildForm.
	self assert: formDefinition getAllRegistryInstances size equals: 1.
	self assert: formDefinition instancesSetSize equals: 1.

	form buildForm; buildForm; buildForm.
	self assert: formDefinition getAllRegistryInstances size equals: 1.
	self assert: formDefinition instancesSetSize equals: 1.