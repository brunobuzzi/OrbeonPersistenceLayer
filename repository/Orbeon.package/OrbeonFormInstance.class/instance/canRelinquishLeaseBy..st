lease
canRelinquishLeaseBy: relinquishUsername
	"Answer whether or not the receiver can relinquish the current lease to user named <relinquishUsername>"

	(self secondsToExpire < 0) ifTrue: [lease := nil]. "if the lease has expired --> remove it"

	lease ifNil: [^true].

	^(self leaseUsername = relinquishUsername)