other
getDefinitionsCollection

	selectedLateralItem ifNil: [^#()].

	^(selectedLateralItem getLastDefinitions select: [:each | self session user hasReadPermissionOn: each]) asArray