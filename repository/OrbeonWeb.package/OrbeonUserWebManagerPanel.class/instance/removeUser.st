users
removeUser

	selectedUser ifNil: [^self].

	selectedUser removeFromCache.

	userCollection remove: selectedUser ifAbsent: []