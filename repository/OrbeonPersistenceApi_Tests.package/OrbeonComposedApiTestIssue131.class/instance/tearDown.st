setUp
tearDown

"	(self apiNamed: 'library') application unregisterDefinitionNamed: 'library'.
	(self apiNamed: 'library') application unregisterDefinitionNamed: 'registration'.

	(self apiNamed: 'library') application removeFromCache."

	super tearDown.