other
printExportType

	(parentSection notNil and: [parentSection isRepeatable]) ifTrue: [^'(R)'].

	^'(N)'