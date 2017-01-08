permissions
getInvertedPermissions
	"Answer aDictionary where the <key> is the permmision and the <value> is a String with all roles granted "
	| invertedPermissions |

	invertedPermissions := Dictionary new.

	permissions permissionsKeysAndValuesDo: [:rolName :permissionsCollection | 
		permissionsCollection do: [:permission |  | currentGrants |
			currentGrants := invertedPermissions at: permission ifAbsent: [rolName] ifPresent: [:value | value, ' ', rolName].
			invertedPermissions at: permission put: currentGrants.
		].
	].

	^invertedPermissions