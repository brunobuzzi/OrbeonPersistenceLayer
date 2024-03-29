other
tryLogin
	| logedUser loginMode |

	loginMode := self session systemRoot loginModeFor: 'orbeon-web'.
	(loginMode validateUser: name password: password on: self session systemRoot) ifFalse: [^loginAttempts := loginAttempts + 1].

	logedUser := self session systemRoot getExistingOrNewUserNamed: name.

	self session user: logedUser.

	self show: WAOrbeonAdministrationPortal new.