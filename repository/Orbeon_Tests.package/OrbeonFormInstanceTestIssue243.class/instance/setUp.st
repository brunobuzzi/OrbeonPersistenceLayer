other
setUp
	| definition |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue-test'.
	definition := application definitionNamed: 'issue-243' ifNone: [self createFormStructure_v1].