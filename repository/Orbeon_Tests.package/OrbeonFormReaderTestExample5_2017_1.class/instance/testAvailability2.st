other
testAvailability2

	self assert: reader isAvailable.

	[reader setAvailableNodeValueWith: '1212'] on: OrbeonInvalidXMLException do: [:ex | self assert: true].

	reader setAvailableNodeValueWith: 'true'.
	self assert: reader isAvailable.

	reader setAvailableNodeValueWith: 'false'.
	self deny: reader isAvailable.