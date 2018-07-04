lease
relinquishLeaseBy: relinquishUsername
	"The receiver relinquish the current lease "

	lease ifNil: [^self].

	(self leaseUsername = relinquishUsername)
	ifTrue: [lease := nil]