lease
grantLeaseForSeconds: seconds to: usernameToLease
	"The receiver grant a lease on the receiver for seconds <seconds> to the user named <usernameToLease>"

	(self canLeaseTo: usernameToLease) ifFalse: [FormInstanceHasLeaseException signal: 'This form instance is already leased to [', lease username, ']'].

	lease := OrbeonLease newFor: self.
	lease username: usernameToLease; 
		expiration: (TimeStamp now plusSeconds: seconds).