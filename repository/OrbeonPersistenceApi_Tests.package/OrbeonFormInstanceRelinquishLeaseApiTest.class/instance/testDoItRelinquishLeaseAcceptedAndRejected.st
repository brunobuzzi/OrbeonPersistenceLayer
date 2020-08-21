other
testDoItRelinquishLeaseAcceptedAndRejected
	| definition form application |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: 'agesic'.
	definition := application definitionNamed: 'energy-recursive' ifNone: [self createFormStructure].

	form := self createFormInstanceWithId: UUID new asString on: definition.

	form grantLeaseForSeconds: 600 to: 'bruno'. "lease form to 'bruno' "

	apiOperation id: form id.

	apiOperation doItIfRejected: [:instance :xmlRejection | self assert: false].
	self assert: (form canRelinquishLeaseBy: 'bruno'). "now the lease is <nil> and it can be relinquish by any user"
	self assert: (form canRelinquishLeaseBy: 'john').

	form grantLeaseForSeconds: 600 to: 'bruno'. "lease form to 'bruno' "

	apiOperation xmlString: self createLeaseXmlInfoForJohn.
	apiOperation doItIfRejected: [:instance :xmlRejection | 
		self assert: (instance canLeaseTo: 'bruno').
		self deny: (instance canLeaseTo: 'john').
		^self assert: true].

	self assert: false