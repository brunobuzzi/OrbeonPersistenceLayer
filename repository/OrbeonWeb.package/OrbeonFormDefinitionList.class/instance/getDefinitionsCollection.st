selection
getDefinitionsCollection

	^(collection select: [:each | self session user hasReadPermissionOn: each]) asArray