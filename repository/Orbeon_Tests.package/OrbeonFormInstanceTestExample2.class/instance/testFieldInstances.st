other
testFieldInstances

	self assert: (self assertStringFieldNamed: 'name' withValues: #('Bruno')).

	self assert: (self assertStringFieldNamed: 'surname' withValues: #('Buzzi')).

	self assert: (self assertStringFieldNamed: 'phones' withValues: #('4087536' '0999' '712')).

	self assert: (self assertStringFieldNamed: 'address' withValues: #('chana' 'Libre' 'pocitos')).