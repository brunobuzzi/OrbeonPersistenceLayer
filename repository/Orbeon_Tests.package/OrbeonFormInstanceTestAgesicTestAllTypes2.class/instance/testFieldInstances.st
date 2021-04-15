tests
testFieldInstances

	self assert: (self assertBooleanFieldNamed: 'boolean' withValues: #(true)).

	self assert: (self assertNumberFieldNamed: 'currency' withValues: #(45.36 69 12045)).

	self assert: (self assertDateFieldNamed: 'date1' withValues: (Array with: (Date fromString: '04/09/2021'))).

	self assert: (self assertDateFieldNamed: 'date2' withValues: (Array with: (Date fromString: '04/09/2021'))).

	self assert: (self assertDateFieldNamed: 'date3' withValues: (Array with: (Date fromString: '04/09/2021'))).

	self assert: (self assertTimeStampFieldNamed: 'dateTime' withValues: (Array with: (TimeStamp fromString: '04/09/2021 17:21:30'))).

	self assert: (self assertStringFieldNamed: 'details' withValues: #('Some details here')).

	self assert: (self assertStringFieldNamed: 'mail' withValues: #('b@b.st')).

	self assert: (self assertStringFieldNamed: 'mobile' withValues: #('0995689')).

	self assert: (self assertStringFieldNamed: 'moneySubject' withValues: #('1' '2' '3')).

	self assert: (self assertStringFieldNamed: 'name' withValues: #('Bruno')).

	self assert: (self assertStringFieldNamed: 'options' withValues: #('2' '1')).

	self assert: (self assertStringFieldNamed: 'otherOptions' withValues: #('2')).

	self assert: (self assertStringFieldNamed: 'phone' withValues: #('4444444445')).

	self assert: (self assertNumberFieldNamed: 'quantity' withValues: #(12 24 48)).

	self assert: (self assertStringFieldNamed: 'surname' withValues: #('Buzzi Brassesco')).

	self assert: (self assertStringFieldNamed: 'type' withValues: #('2')).