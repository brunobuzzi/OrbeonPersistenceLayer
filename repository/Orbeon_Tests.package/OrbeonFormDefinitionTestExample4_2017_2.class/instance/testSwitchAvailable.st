other
testSwitchAvailable

	self deny: form formReader isAvailable.

	form switchAvailable.

	self assert: form formReader isAvailable.

	form switchAvailable.

	self deny: form formReader isAvailable.