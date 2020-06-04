permissions
selectFormWithPermissions: collectionOfForms
	| allPermissions hasReadPermissionOnAll hasOwnerPermission hasGroupPermission rolesWithReadPermission queryString |

	self hasPermissionsEnabled ifFalse: [^collectionOfForms].

	allPermissions := permissions at: 'read' ifAbsent: [^collectionOfForms].
	hasOwnerPermission := allPermissions includesSubString: 'owner'.
	hasGroupPermission := allPermissions includesSubString: 'group-member'.
	rolesWithReadPermission := allPermissions subStrings: ' '.
	rolesWithReadPermission remove: 'owner' ifAbsent: []; remove: 'group-member' ifAbsent: [].

	"the user has any of its <roles> included on form definition <rolesWithReadPermission> --> has read permission on all"
	hasReadPermissionOnAll := (credentials intersection: rolesWithReadPermission) notEmpty.

	queryString := ''. 
	hasOwnerPermission ifTrue: [queryString := queryString, (queryString ifEmpty: [''] ifNotEmpty: [' | ']), '(each.username = ''', self user, ''')' ].
	hasGroupPermission ifTrue: [queryString := queryString, (queryString ifEmpty: [''] ifNotEmpty: [' | ']), '(each.groupname = ''', self group, ''')' ].

	^hasReadPermissionOnAll "has read permissions to all instances ?"
	ifTrue:[collectionOfForms] 
	ifFalse:[(queryString asQueryOn: collectionOfForms) asArray].