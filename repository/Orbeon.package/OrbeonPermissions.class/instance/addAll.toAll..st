other
addAll: permissionNameArray toAll: arrayRole

	permissionNameArray do: [:eachPermission | 
		arrayRole do: [:eachRole | | newRoleName |
			newRoleName := (eachRole = 'all') ifTrue: ['anyone'] ifFalse: [eachRole].
			self add: eachPermission to: newRoleName]]