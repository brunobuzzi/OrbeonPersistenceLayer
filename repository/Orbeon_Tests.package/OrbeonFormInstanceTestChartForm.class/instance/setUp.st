other
setUp
	| definition |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'charts'.
	definition := self getOrCreateFormDefinition.