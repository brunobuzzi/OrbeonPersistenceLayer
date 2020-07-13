permissions
getPermissionsForUser: user inGroup: group with: formDefinition
	"The receiver answer a collection of permissions (a string separated by blanks) for the user <username> and group <group> using the form definition <formDefinition> to get the current permissions to apply.
	To calculate permissions we use the last version of OrbeonFormDefinition and NOT the <formInstance definition>.
	If not --> is not possible to change permission of a given instance if the definition version is higher that the instance version.
	Using the last version of OrbeonFormDefinition to calculate permissions --> all instance are affected by the change"
	| printStream |

	printStream := PrintStream on: String new.

	((formDefinition hasUserNamed: user createPermissionsOn: self) 
	or: [formDefinition hasRoleNamed: group createPermissionsOn: self])
		ifTrue: [printStream nextPutAll: 'create '].

	((formDefinition hasUserNamed: user readPermissionsOn: self) 
	or: [formDefinition hasRoleNamed: group readPermissionsOn: self])
		ifTrue: [printStream nextPutAll: 'read '].

	((formDefinition hasUserNamed: user updatePermissionsOn: self) 
	or: [formDefinition hasRoleNamed: group updatePermissionsOn: self])
		ifTrue: [printStream nextPutAll: 'update '].

	((self hasUserNamed: user deletePermissionsOn: self) 
	or: [formDefinition hasRoleNamed: group deletePermissionsOn: self])
		ifTrue: [printStream nextPutAll: 'delete '].

	^printStream contents