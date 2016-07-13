ldap_example
tryLogin2
	| logedUser serverResult |

	"self show: (WAOrbeonHandler on: (OrbeonHandler host: 'localhost' user: 'root' password: 'MYSQL'))"
	serverResult := self ldapExample_getLdapResultForCurrentUser.
	(serverResult = 'TRUE') ifFalse: [^self inform: 'Incorrect Login !!!'].

	logedUser := OrbeonUser cache detect: [:each | each name = name] ifNone: [self newUserFromLogin].

	logedUser rols: self ldapExample_getLdapRols asSet.

	self session user: logedUser.

	self show: (WAOrbeonHandler on: OrbeonHandler default)