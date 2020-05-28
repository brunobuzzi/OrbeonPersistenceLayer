other
testSwitchAvailable

	self assert: form newFormReader isAvailable.
	self assert: form isAvailable.

	form switchAvailable.

	self deny: form isAvailable.
	self deny: form newFormReader isAvailable.

	form switchAvailable.

	self assert: form newFormReader isAvailable.
	self assert: form isAvailable.