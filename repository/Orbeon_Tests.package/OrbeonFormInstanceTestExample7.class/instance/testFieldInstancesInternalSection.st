other
testFieldInstancesInternalSection

	self assert: true.
"	self assert: (self assertStringFieldNamed: 's' withValues: #('s1')).
	self assert: (self assertStringFieldNamed: 'k' withValues: #('k1')).
	self assert: (self assertStringFieldNamed: 'uuid' withValues: #('u1')).
	self assert: (self assertStringFieldNamed: 'oop' withValues: #('op1')).
	self assert: (self assertStringFieldNamed: 'assignmentOop' withValues: #('op2')).

	self assert: (self assertStringFieldNamed: 'username' withValues: #('bruno')).
	self assert: (self assertStringFieldNamed: 'rol' withValues: #('admin')).
	self assert: (self assertStringFieldNamed: 'processId' withValues: #('12')).

	self assert: (self assertStringFieldNamed: 'name' withValues: #('john')).
	self assert: (self assertStringFieldNamed: 'surname' withValues: #('conor')).

	self assert: (self assertStringFieldNamed: 'street' withValues: #('av end')).
	self assert: (self assertStringFieldNamed: 'number' withValues: #('123')).
	self assert: (self assertStringFieldNamed: 'subNumber' withValues: #('543'))."