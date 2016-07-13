other
hasReadAccess: anOrbeonUser
	"Answer whether or not the user <anOrbeonUser> has read permission over the receiver.
	If an user has read permission over a definition then has read access over the application (the receiver)"

	^self getLastDefinitions anySatisfy: [:each | anOrbeonUser hasReadPermissionOn: each]