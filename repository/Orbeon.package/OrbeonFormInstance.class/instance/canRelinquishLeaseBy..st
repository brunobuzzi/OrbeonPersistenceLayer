lease
canRelinquishLeaseBy: relinquishUsername
	"The receiver relinquish the current lease "

	(self secondsToExpire < 0) ifTrue: [lease := nil]. "if the lease has expired --> remove it"

	lease ifNil: [^true].

	^(self leaseUsername = relinquishUsername)