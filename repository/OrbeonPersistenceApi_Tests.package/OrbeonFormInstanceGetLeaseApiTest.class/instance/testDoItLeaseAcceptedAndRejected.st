other
testDoItLeaseAcceptedAndRejected
	| definition form application |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.
	definition := application definitionNamed: 'energy-recursive' ifNone: [self createFormStructure].

	form := self createFormInstanceWithId: UUID new asString on: definition.

	apiOperation id: form id;
		setTimeoutFromString: 'Second-600'.

	apiOperation doItIfRejected: [:instance :xmlRejection | self assert: false].
	self assert: (form canRelinquishLeaseBy: 'bruno').
	self deny: (form canRelinquishLeaseBy: 'john').

	apiOperation xmlString: self createLeaseXmlInfoForJohn.
	apiOperation doItIfRejected: [:instance :xmlRejection | 
		self assert: (instance canLeaseTo: 'bruno').
		self deny: (instance canLeaseTo: 'john').
		^self assert: true].

	self assert: false