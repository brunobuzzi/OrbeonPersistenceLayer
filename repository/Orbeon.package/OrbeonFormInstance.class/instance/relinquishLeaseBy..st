lease
relinquishLeaseBy: relinquishUsername
	"The receiver relinquish the current lease by the user named <relinquishUsername>"

	lease ifNil: [^self].

	(self leaseUsername = relinquishUsername)
	ifTrue: [lease := nil]