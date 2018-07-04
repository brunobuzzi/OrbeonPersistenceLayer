lease
hasLeaseWith: leaseUsername
	"Answer whether or not the receiver has a lease by user named <leaseUsername>"

	^lease notNil and: [self leaseUsername = leaseUsername]