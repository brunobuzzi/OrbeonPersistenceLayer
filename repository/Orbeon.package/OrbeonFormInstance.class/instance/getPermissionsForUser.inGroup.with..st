other
getPermissionsForUser: user inGroup: group with: formDefinition
	"The receiver answer a collection of permissions (a string separated by blanks) for the user <username> and group <group> using the form definition <formDefinition> to get the current permissions to apply.
	To calculate permissions we use the last version of OrbeonFormDefinition and NOT the <formInstance definition>.
	If not --> is not possible to change permission of a given instance if the definition version is higher that the instance version.
	Using the last version of OrbeonFormDefinition to calculate permissions --> all instance are affected by the change"
	| printStream |

	printStream := PrintStream on: String new.

	((self hasUser: user createAccessUsing: formDefinition permissions) 
	or: [self hasRole: group createAccessUsing: formDefinition permissions])
		ifTrue: [printStream nextPutAll: 'create '].

	((self hasUser: user readAccessUsing: formDefinition permissions) 
	or: [self hasRole: group readAccessUsing: formDefinition permissions])
		ifTrue: [printStream nextPutAll: 'read '].

	((self hasUser: user updateAccessUsing: formDefinition permissions) 
	or: [self hasRole: group updateAccessUsing: formDefinition permissions])
		ifTrue: [printStream nextPutAll: 'update '].

	((self hasUser: user deleteAccessUsing: formDefinition permissions) 
	or: [self hasRole: group deleteAccessUsing: formDefinition permissions])
		ifTrue: [printStream nextPutAll: 'delete '].

	^printStream contents