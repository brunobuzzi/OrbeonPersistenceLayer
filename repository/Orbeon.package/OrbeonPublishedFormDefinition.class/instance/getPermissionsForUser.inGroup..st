permissions
getPermissionsForUser: user inGroup: group
	"The receiver answer a collection of permissions (a string separated by blanks) for the user <username> and group <group> using the form definition <formDefinition> to get the current permissions to apply.
	To calculate permissions we use the last version of OrbeonFormDefinition and NOT the <formInstance definition>.
	If not --> is not possible to change permission of a given instance if the definition version is higher that the instance version.
	Using the last version of OrbeonFormDefinition to calculate permissions --> all instance are affected by the change"
	| printStream |

	printStream := PrintStream on: String new.

	(self hasCreatePermission: group) ifTrue: [printStream nextPutAll: 'create '].

	(self hasDeletePermission: group) ifTrue: [printStream nextPutAll: 'delete '].

	(self hasReadPermission: group) ifTrue: [printStream nextPutAll: 'read '].

	(self hasUpdateAccess: group) ifTrue: [printStream nextPutAll: 'update '].

	^printStream contents