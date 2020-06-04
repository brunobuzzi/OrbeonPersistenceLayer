permissions
selectFormWithPermissions: collectionOfForms
	| allPermissions hasReadPermissionOnAll hasOwnerPermission hasGroupPermission rolesWithReadPermission queryString |

	self hasPermissionsEnabled ifFalse: [^collectionOfForms].

	allPermissions := permissions at: 'read' ifAbsent: [^collectionOfForms].
	hasOwnerPermission := permissions includesSubString: 'owner'.
	hasGroupPermission := permissions includesSubString: 'group-member'.
	rolesWithReadPermission := permissions subStrings: ' '.
	rolesWithReadPermission remove: 'owner' ifAbsent: []; remove: 'group-member' ifAbsent: [].

	"the user has any of its <roles> included on form definition <rolesWithReadPermission> --> has read permission on all"
	hasReadPermissionOnAll := (credentials intersection: rolesWithReadPermission) notEmpty.

	queryString := ''. 
	hasOwnerPermission ifTrue: [queryString := queryString, (queryString ifEmpty: [''] ifNotEmpty: [' | ']), '(each.username = ''', user, ''')' ].
	hasGroupPermission ifTrue: [queryString := queryString, (queryString ifEmpty: [''] ifNotEmpty: [' | ']), '(each.groupname = ''', group, ''')' ].

	^hasReadPermissionOnAll "has read permissions to all instances ?"
	ifTrue:[collectionOfForms] 
	ifFalse:[(queryString asQueryOn: collectionOfForms) asArray].