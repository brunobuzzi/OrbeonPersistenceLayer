other
tryLogin
	| logedUser loginMode |

	loginMode := self getGemStoneServerConfiguration loginModeFor: 'orbeon-web'.
	(loginMode validateUser: name password: password) ifFalse: [^loginAttempts := loginAttempts + 1].

	logedUser := OrbeonUser getExistingOrNewUserNamed: name.

	self session user: logedUser.

	"self show: (WAOrbeonHandler on: OrbeonHandler default)."

	self show: WAOrbeonAdministrationPortal new.