setUp
setUp
	| definition |

	super setUp.

	application := testRoot getExistingApplicationOrCreateNewNamed: 'ue-test'.
	definition := application definitionNamed: 'issue-243' ifNone: [self createFormStructure_v1].