other
tryLogin
	| logedUser loginMode |

	loginMode := self getGemStoneServerConfiguration loginModeFor: 'orbeon-web'.
	(loginMode validateUser: name password: password on: self session systemRoot) ifFalse: [^loginAttempts := loginAttempts + 1].

	logedUser := OrbeonUser getExistingOrNewUserNamed: name.

	self session user: logedUser.

	self show: WAOrbeonAdministrationPortal new.