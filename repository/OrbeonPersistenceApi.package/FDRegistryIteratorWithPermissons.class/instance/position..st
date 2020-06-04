gsBug46607
position: integerShift
	"The receiver skip to <integerShift> position. Each version in <versions> collection eventually could have a ReadStream associated to it's instances "
	| lastPublishedVersion allPermissions rolesWithReadPermission hasOwnerPermission hasGroupPermission queryString hasReadPermissionOnAll instances |

	lastPublishedVersion := definitionRegistry getLastVersion.

	allPermissions := lastPublishedVersion getInvertedPermissions at: 'read' ifAbsent: [^nil].
	hasOwnerPermission := allPermissions includesSubString: 'owner'.
	hasGroupPermission := allPermissions includesSubString: 'group-member'.
	rolesWithReadPermission := allPermissions subStrings: ' '.
	rolesWithReadPermission remove: 'owner' ifAbsent: []; remove: 'group-member' ifAbsent: [].

	hasReadPermissionOnAll := (roles intersection: rolesWithReadPermission) notEmpty. "the user has any of its <roles> included on form definition <rolesWithReadPermission> --> has read permission on all"

	queryString := ''. 
	hasOwnerPermission ifTrue: [queryString := queryString, (queryString ifEmpty: [''] ifNotEmpty: [' | ']), '(each.username = ''', user, ''')' ].
	hasGroupPermission ifTrue: [queryString := queryString, (queryString ifEmpty: [''] ifNotEmpty: [' | ']), '(each.groupname = ''', group, ''')' ].

	instances := definitionRegistry instancesSetOfVersion: versionNumber.

	currentStream := hasReadPermissionOnAll "has read permissions to all instances ?"
							ifTrue:[ReadStreamPortable on: instances] 
							ifFalse:[gsQuery := queryString asQueryOn: instances.
									ReadStreamPortable on: gsQuery asArray asSet asArray. "GS bug 46607 - the query return duplicate objects --> asSet"].

	(integerShift > currentStream size) ifTrue: [^ImproperOrbeonOperationException signal: 'An attempt was made to set the Stream to position ',integerShift printString,' beyond the limits of the collection.'].
	
	currentStream position: integerShift