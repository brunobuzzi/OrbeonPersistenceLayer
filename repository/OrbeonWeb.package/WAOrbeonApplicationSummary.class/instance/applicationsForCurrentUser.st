other
applicationsForCurrentUser

	^self getOrbeonApplicationCache select: [:each | each hasReadAccess: self session user]