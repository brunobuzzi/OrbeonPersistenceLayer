other
testFieldInstancesMainSection

	self assert: (self assertStringFieldNamed: 'name' withValues: #('bruno' 'alberto')).

	self assert: (self assertStringFieldNamed: 'surname' withValues: #('buzzi' 'joya')).

	self assert: (self assertStringFieldNamed: 'mobile' withValues: #('099' '098' '123' '789' '456')).

	self assert: (self assertStringFieldNamed: 'code' withValues: #('888' '999')).

	self assert: (self assertStringFieldNamed: 'mount' withValues: #('100' '1500' '2000' '2500' '3000')).

	self assert: (self assertStringFieldNamed: 'number' withValues: #('020' '021')).