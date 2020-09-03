permissions
getPermissionsForRole: group
	| printStream |

	printStream := PrintStream on: String new.

	(self hasCreatePermission: group) ifTrue: [printStream nextPutAll: 'create '].

	(self hasDeletePermission: group) ifTrue: [printStream nextPutAll: 'delete '].

	(self hasReadPermission: group) ifTrue: [printStream nextPutAll: 'read '].

	(self hasUpdatePermission: group) ifTrue: [printStream nextPutAll: 'update '].

	^printStream contents