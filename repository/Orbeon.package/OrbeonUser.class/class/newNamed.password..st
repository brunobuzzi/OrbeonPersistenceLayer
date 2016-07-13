other
newNamed: aString password: password
	| user centralUser |

	centralUser := ApplicationUser getExistingOrNewUserNamed: aString.
	centralUser password: password.

	user := self new initialize.
	user centralUser: centralUser.

	user addToCache.

	^user