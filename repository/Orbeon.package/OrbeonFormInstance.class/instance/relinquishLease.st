lease
relinquishLease
	"The receiver relinquish the current lease if none answer an exception"

	self hasLease ifFalse: [NoCurrentLeaseException signal: 'No user has a lease on this document with id [', id ,']' ].

	lease := nil