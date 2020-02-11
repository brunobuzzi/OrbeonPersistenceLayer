other
testMultipleSaveOnSameForm
	| application formDefinition |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue-test'.
	formDefinition := application definitionNamed: 'issue-243' ifNone: [self assert: false].

	form := (OrbeonFormInstance newFor: formDefinition withId: UUID new asString)
					definition: formDefinition;
					xmlString: (OrbeonFormInstanceTemplate form_issu243_v1_name: 'John' surname: 'McCarthy');
					processXML;
					yourself.

	self assert: formDefinition registry getAllInstances size equals: 1.

	form processXML.
	self assert: formDefinition registry getAllInstances size equals: 1.
	self assert: formDefinition registry instancesSet size equals: 1.

	form processXML; processXML.
	self assert: formDefinition registry getAllInstances size equals: 1.
	self assert: formDefinition registry instancesSet size equals: 1.

	form processXML; processXML; processXML.
	self assert: formDefinition registry getAllInstances size equals: 1.
	self assert: formDefinition registry instancesSet size equals: 1.