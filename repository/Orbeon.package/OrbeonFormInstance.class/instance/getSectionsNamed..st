get sections
getSectionsNamed: aString

	^sections select: [:each | each name = aString]