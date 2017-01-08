iterator
getIteratorFor: username group: groupname
	"Answer a suitable instance to iterate over the receiver"

	^(self getIteratorClass on: self)
		user: username;
		group: groupname;
		yourself