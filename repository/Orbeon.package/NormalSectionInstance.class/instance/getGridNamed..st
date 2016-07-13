other
getGridNamed: aString

	^grids at: aString ifAbsent: [nil]