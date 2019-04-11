other
has: roleName permission: permissionName
	"Answer whether or not the receiver has the permission <permissionName> for the role <roleName>.
	First check for the permission collection of -anyone- then check in the specific collection of the role <roleName>"

	^permissions 
		at: 'anyone' 
		ifPresent: [:permissionsCollection | 
			(permissionsCollection includes: permissionName) 	
			ifFalse: [(permissions at: roleName ifAbsent: [^false]) includes: permissionName] "specific <rolName> permissions (-anyone- not present)"
			ifTrue: [true] "general permissions -anyone- "
		]
		ifAbsent: [false]