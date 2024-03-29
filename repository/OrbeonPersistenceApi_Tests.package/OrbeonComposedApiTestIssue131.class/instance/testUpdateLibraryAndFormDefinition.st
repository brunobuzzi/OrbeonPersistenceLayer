tests
testUpdateLibraryAndFormDefinition
	| app formInstanceV1 definitionV1 definitionV2 formInstanceV2 |

	"Form Definition Version 1 with Library Version 1"
	(self apiNamed: 'savedLibrary') doIt.
	(self apiNamed: 'library') doItIfNotFound: [self assert: false].
	(self apiNamed: 'savedDefinition') doIt.
	(self apiNamed: 'formDefinition') doItIfNotFound: [self assert: false].

	app := testRoot applicationNamed: 'emb' ifNone: [self assert: false].
	definitionV1 := app definitionNamed: 'registration' ifNone: [self assert: false].
	formInstanceV1 := (OrbeonFormInstance newFor: definitionV1 withId: UUID new asString)
					definition: definitionV1;
					xmlString: testRoot newInstanceTemplate formInstance_emb_registration_v1;
					buildForm;
					yourself.
	self assert: (formInstanceV1 valueAt: 'name') equals: 'Adele Goldberg'.
	self deny: (formInstanceV1 hasFieldNamed: 'surname').

	"Form Definition Version 2 with Library Version 2"
	self createDefinitions_v2.
	(self apiNamed: 'savedLibrary_v2') doIt.
	(self apiNamed: 'library_v2') doItIfNotFound: [self assert: false].
	(self apiNamed: 'savedDefinition_v2') doIt.
	(self apiNamed: 'formDefinition_v2') doItIfNotFound: [self assert: false].

	definitionV2 := app definitionNamed: 'registration' ifNone: [self assert: false].
	formInstanceV2 := (OrbeonFormInstance newFor: definitionV2 withId: UUID new asString)
					definition: definitionV2;
					xmlString: testRoot newInstanceTemplate formInstance_emb_registration_v2;
					buildForm;
					yourself.
	self assert: (formInstanceV2 valueAt: 'name') equals: 'Alan'.
	self assert: (formInstanceV2 valueAt: 'surname') equals: 'Kay'.

	"Form Definition Version 1 with Library Version 1 - again"
	definitionV1 := app definitionNamed: 'registration' version: 1 ifNone: [self assert: false].
	formInstanceV1 := (OrbeonFormInstance newFor: definitionV1 withId: UUID new asString)
					definition: definitionV1;
					xmlString: testRoot newInstanceTemplate formInstance_emb_registration_v1;
					buildForm;
					yourself.
	self assert: (formInstanceV1 valueAt: 'name') equals: 'Adele Goldberg'.
	self deny: (formInstanceV1 hasFieldNamed: 'surname').