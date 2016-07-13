users
addUser
	| newUser |

	newUser := OrbeonUser new 
		name: username;
		password: password;
		addToCache;
		yourself.

	selectedUser := newUser.
	userCollection add: selectedUser.