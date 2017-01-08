permissions
permissionsCollection
	| permissionCollection |

	permissionCollection  := OrderedCollection new.
	permissions keysAndValuesDo: [:key :value | | grantString |
		grantString := key, ' >> '.
		value do: [:each | grantString := grantString, each, ', '].
		permissionCollection add: (grantString allButLast: 2).
	].

	^permissionCollection