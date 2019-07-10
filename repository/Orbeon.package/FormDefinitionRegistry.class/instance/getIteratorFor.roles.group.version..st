iterator
getIteratorFor: username roles: roles group: groupname version: version
	"Answer a suitable instance to iterate over the receiver"

	^((self getIteratorClassFor: version) on: self forVersion: version)
		user: username;
		group: groupname;
		roles: roles;
		yourself