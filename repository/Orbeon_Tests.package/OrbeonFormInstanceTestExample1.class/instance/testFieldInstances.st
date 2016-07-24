other
testFieldInstances

	self assert: (self assertBooleanFieldNamed: 'boolean' withValues: #(true)).

	self assert: (self assertNumberFieldNamed: 'currency' withValues: #(122.5)).

	self assert: (self assertDateFieldNamed: 'date1' withValues: (Array with: (Date fromString: '04/08/2016'))).

	self assert: (self assertDateFieldNamed: 'date2' withValues: (Array with: (Date fromString: '07/07/2006'))).

	self assert: (self assertDateFieldNamed: 'date3' withValues: (Array with: (Date fromString: '04/19/2016'))).

	self assert: (self assertTimeStampFieldNamed: 'dateTime' withValues: (Array with: (TimeStamp fromString: '04/13/2016 12:50:00'))).

	self assert: (self assertStringFieldNamed: 'details' withValues: #('these are the details')).

	self assert: (self assertStringFieldNamed: 'mail' withValues: #('b@e.tv')).

	self assert: (self assertStringFieldNamed: 'mobile' withValues: #('09998')).

	self assert: (self assertStringFieldNamed: 'moneySubject' withValues: #('3')).

	self assert: (self assertStringFieldNamed: 'name' withValues: #('bruno')).

	self assert: (self assertStringFieldNamed: 'options' withValues: #('2 1')).

	self assert: (self assertStringFieldNamed: 'otherOptions' withValues: #('2')).

	self assert: (self assertStringFieldNamed: 'phone' withValues: #('4444444445')).

	self assert: (self assertNumberFieldNamed: 'quantity' withValues: #(5005)).

	self assert: (self assertStringFieldNamed: 'surname' withValues: #('buzzo')).

	self assert: (self assertStringFieldNamed: 'type' withValues: #('1')).