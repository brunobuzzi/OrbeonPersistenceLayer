gsBug46607
position: integerShift
	"The receiver skip to <integerShift> position. Each version in <versions> collection eventually could have a ReadStream associated to it's instances "
	| lastPublishedVersion allPermissions rolesWithReadPermission hasOwnerPermission hasGroupPermission queryString |

	lastPublishedVersion := definitionRegistry getLastVersion.

	allPermissions := lastPublishedVersion getInvertedPermissions at: 'read' ifAbsent: [^nil].
	hasOwnerPermission := allPermissions includesSubString: 'owner'.
	hasGroupPermission := allPermissions includesSubString: 'group-member'.
	rolesWithReadPermission := allPermissions subStrings: ' '.
	rolesWithReadPermission remove: 'owner' ifAbsent: []; remove: 'group-member' ifAbsent: [].

	queryString := ''. 
	hasOwnerPermission ifTrue: [queryString := queryString, (queryString ifEmpty: ['(each.username = ''', user, ''')'] ifNotEmpty: [' | ', '(each.username = ''', user, ''')']) ].
	hasGroupPermission ifTrue: [queryString := queryString, (queryString ifEmpty: ['(each.groupname = ''', group, ''')'] ifNotEmpty: [' | ', '(each.groupname = ''', group, ''')']) ].

	"rolesWithReadPermission do: [:roleName | queryString := queryString, (queryString ifEmpty: ['(each.groupname = ''', roleName, ''')'] ifNotEmpty: [' | ', '(each.groupname = ''', roleName, ''')'])]."

	gsQuery := queryString asQueryOn: (definitionRegistry instancesSetOfVersion: versionNumber).

	currentStream := ReadStreamPortable on: gsQuery asArray asSet asArray. "GS bug 46607 - the query return duplicate objects --> asSet"

	(integerShift > currentStream size) ifTrue: [^ImproperOrbeonOperationException signal: 'An attempt was made to set the Stream to position ',integerShift printString,' beyond the limits of the collection.'].
	
	currentStream position: integerShift