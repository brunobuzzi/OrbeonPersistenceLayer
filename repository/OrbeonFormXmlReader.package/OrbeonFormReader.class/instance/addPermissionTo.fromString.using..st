permissions
addPermissionTo: permissions fromString: stringOperations using: permissionNode
	"The receiver add permission to OrbeonPermissions <permissions> to roles in node <permissionNode> with grant <stringOperations>"
	| subNode |

	subNode := permissionNode nodes first.
	
	(stringOperations subStrings: ' ') do: [:oper | 
		(subNode name = 'user-role')
		ifFalse: [permissions add: oper to: subNode name] "for group-members and owner"
		"for specific roles. -any-of- can have more than one role"
		ifTrue: [((subNode attributeAt: 'any-of') subStrings: ' ') do: [:rol | permissions add: oper to: rol]] 
	].