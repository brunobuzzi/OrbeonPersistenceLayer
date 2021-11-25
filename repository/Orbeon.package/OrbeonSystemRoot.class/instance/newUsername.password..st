application users
newUsername: username password: password 
	"The receiver create a new <BpmUser> named <username> with password <username>"
	| centralUser orbeonUser |

	centralUser := self getExistingOrNewCentralUserNamed: username.
	centralUser password: password.

	orbeonUser := OrbeonUser newNamed: username password: password.
	orbeonUser centralUser: centralUser.

	self registerUser: orbeonUser ifPresent: [].

	^orbeonUser