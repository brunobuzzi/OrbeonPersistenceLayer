other
applicationsForCurrentUser

	^self session systemRoot selectInCache: [:each | each hasReadAccess: self session user]