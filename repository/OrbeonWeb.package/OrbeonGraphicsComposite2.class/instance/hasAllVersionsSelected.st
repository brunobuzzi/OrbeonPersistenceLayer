render
hasAllVersionsSelected

	^self searchValueAt: 'all-version' ifAbsent: [false]