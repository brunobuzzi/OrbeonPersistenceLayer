permissions
hasPermission: permissionName for: roleName
	"Answer whether or not the role named <roleName> has the permission named <permissionName> in the receiver"
	
	^permissions has: roleName permission: permissionName