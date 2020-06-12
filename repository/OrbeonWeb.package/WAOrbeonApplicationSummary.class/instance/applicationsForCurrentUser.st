other
applicationsForCurrentUser

	^self getOrbeonApplicationClass selectInCache: [:each | each hasReadAccess: self session user]