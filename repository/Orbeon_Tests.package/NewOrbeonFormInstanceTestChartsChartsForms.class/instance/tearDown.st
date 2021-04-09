setUp
tearDown

	self keepTempObjectsInSystem ifTrue: [^self].

	application unregisterDefinitionNamed: 'charts-forms'.

	super tearDown.