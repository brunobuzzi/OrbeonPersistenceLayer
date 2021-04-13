tests
testFieldInstancesSectionB

	self assert: (self assertStringFieldNamed: 'nombreDirectivo' withValues: #('Bill Gates')).

	self assert: (self assertStringFieldNamed: 'cargoDirectivo' withValues: #('CEO')).

	self assert: (self assertStringFieldNamed: 'direccionDirectivo' withValues: #('California 45689')).

	self assert: (self assertNumberFieldNamed: 'telefonoDirectivo' withValues: #(994444)).

	self assert: (self assertStringFieldNamed: 'emailDirectivo' withValues: #('bill@bill.com')).