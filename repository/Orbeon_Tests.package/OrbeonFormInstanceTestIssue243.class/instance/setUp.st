other
setUp
	| definition application |

	self getOrbeonApplicationClass cache removeKey: 'ue-test'.
	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'ue-test'.
	definition := application definitionNamed: 'issue-243' ifNone: [self createFormStructure_v1.
																					self createFormStructure_v1_1].