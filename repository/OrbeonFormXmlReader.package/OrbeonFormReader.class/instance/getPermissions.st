permissions
getPermissions
	"The receiver answer aOrbeonPermissions instances with all permissions in <xmlDocument>"
	| permissions permissionNodes |

	permissions := OrbeonPermissions new.
	permissionNodes := xmlDocument allElementsNamed: 'permission'.

	permissionNodes do: [:node |
		node hasContentNodes " -anyone- role does not have content (is an empty node)"
		ifTrue: [self addPermissionTo: permissions fromString: (node attributeAt: 'operations') using: node]
		ifFalse: [self addAnyOnePermissionTo: permissions fromString: (node attributeAt: 'operations')] 
	].

	^permissions