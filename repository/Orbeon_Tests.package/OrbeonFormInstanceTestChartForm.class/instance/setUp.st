other
setUp
	| definition application |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'charts'.
	definition := self getOrCreateFormDefinition.