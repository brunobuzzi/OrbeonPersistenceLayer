other
testUpgradeDefinition
	| application form_v1 |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue-test'.
	formDefinition_v1 := application definitionNamed: 'issue-243' ifNone: [self assert: false].

	form_v1 := (OrbeonFormInstance newFor: formDefinition_v1 withId: UUID new asString)
					definition: formDefinition_v1;
					xmlString: (OrbeonFormInstanceTemplate form_issu243_v1_name: 'John' surname: 'McCarthy');
					processXML;
					yourself.

	self assert: (formDefinition_v1 getInstancesSatisfying: [:fieldValue | fieldValue value = 'John'] in: 'name') size equals: 1.
	self assert: (formDefinition_v1 getInstancesSatisfying: [:fieldValue | fieldValue value = 'McCarthy'] in: 'surname') size equals: 1.
	self assert: (formDefinition_v1 getInstanceWithId: form_v1 id) notNil.

	formDefinition_1_1 := self createFormStructure_v1_1. "here the surname is removed"

	self assert: (formDefinition_v1 getInstancesSatisfying: [:fieldValue | fieldValue value = 'John'] in: 'name') size equals: 1.
	self assert: (formDefinition_v1 getInstancesSatisfying: [:fieldValue | fieldValue value = 'McCarthy'] in: 'surname') size equals: 1.
	self assert: (formDefinition_v1 getInstanceWithId: form_v1 id) notNil.

	form_v1 upgradeDefinition. "upgrae definition to <createFormStructure_v1_1>"

	self assert: (formDefinition_v1 getInstancesSatisfying: [:fieldValue | fieldValue value = 'John'] in: 'name') size equals: 0.
	self assert: (formDefinition_v1 getInstancesSatisfying: [:fieldValue | fieldValue value = 'McCarthy'] in: 'surname') size equals: 0.
	self assert: (formDefinition_v1 getInstanceWithId: form_v1 id) isNil.

	self assert: (formDefinition_1_1 getInstancesSatisfying: [:fieldValue | fieldValue value = 'John'] in: 'name') size equals: 1.
	self assert: (formDefinition_1_1 getInstancesSatisfying: [:fieldValue | fieldValue value = 'McCarthy'] in: 'surname') size equals: 0.
	self assert: (formDefinition_1_1 getInstanceWithId: form_v1 id) notNil.