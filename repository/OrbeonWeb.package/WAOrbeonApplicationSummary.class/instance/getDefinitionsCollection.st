main components
getDefinitionsCollection
	| definitions |

	selectedLateralItem ifNil: [^#()].

	definitions := ((self componentValueAt: 'all-latest') = 'All Versions') ifFalse: [selectedLateralItem getLastDefinitions] ifTrue: [selectedLateralItem getAllDefinitions].

	^(definitions select: [:each | self session user hasReadPermissionOn: each]) asArray