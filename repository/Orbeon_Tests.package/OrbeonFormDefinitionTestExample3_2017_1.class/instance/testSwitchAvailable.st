other
testSwitchAvailable
	"See issue: #177 and 194#."
 
	self assert: form formReader isAvailable.
	self assert: form isAvailable.

	form switchAvailable.

	self deny: form isAvailable.
	self deny: form formReader isAvailable.

	form switchAvailable.

	self assert: form formReader isAvailable.
	self assert: form isAvailable.