lease
canLeaseTo: leaseUsername
	"Answer whether or not the receiver can be leased to user named <leaseUsername>"

	(self secondsToExpire < 0) ifTrue: [lease := nil]. "if the lease has expired --> remove it"

	^self hasLease not or: [self leaseUsername = leaseUsername]