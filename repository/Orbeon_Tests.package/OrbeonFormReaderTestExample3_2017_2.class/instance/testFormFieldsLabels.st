definition tests
testFormFieldsLabels
	| section1 labels |

	section1 := reader formMainSections first.
	labels := reader formFieldsLabels. 

	self assert: ((labels at: 'name' ifAbsent: ['']) = 'Name').
	self assert: ((labels at: 'surname' ifAbsent: ['']) = 'Surname').
	self assert: ((labels at: 'phone' ifAbsent: ['']) = 'Phone').
	self assert: ((labels at: 'mail' ifAbsent: ['']) = 'Mail').
	self assert: ((labels at: 'control-8' ifAbsent: ['']) = 'Here we enter the mobile phones').
	self assert: ((labels at: 'moneySubject' ifAbsent: ['']) = 'Subject').
	self assert: ((labels at: 'quantity' ifAbsent: ['']) = 'Quantity').
	self assert: ((labels at: 'currency' ifAbsent: ['']) = 'Currency').
	self assert: ((labels at: 'currency' ifAbsent: ['']) = 'Currency').
	self assert: ((labels at: 'date1' ifAbsent: ['']) = 'Date 1').
	self assert: ((labels at: 'dateTime' ifAbsent: ['']) = 'Date and Time').
	self assert: ((labels at: 'date2' ifAbsent: ['']) = 'Date 2').
	self assert: ((labels at: 'date3' ifAbsent: ['']) = 'Date 3').
	self assert: ((labels at: 'details' ifAbsent: ['']) = 'Details').
	self assert: ((labels at: 'type' ifAbsent: ['']) = 'Type').
	self assert: ((labels at: 'options' ifAbsent: ['']) = 'Options').
	self assert: ((labels at: 'otherOptions' ifAbsent: ['']) = 'Other Options').
	self assert: ((labels at: 'formatedText' ifAbsent: ['']) = 'Formatted Text').