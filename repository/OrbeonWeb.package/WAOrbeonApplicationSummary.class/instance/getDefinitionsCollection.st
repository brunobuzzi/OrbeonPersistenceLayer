other
getDefinitionsCollection

	selectedLateralItem ifNil: [^#()].

	^(selectedLateralItem getAllDefinitions select: [:each | self session user hasReadPermissionOn: each]) asArray