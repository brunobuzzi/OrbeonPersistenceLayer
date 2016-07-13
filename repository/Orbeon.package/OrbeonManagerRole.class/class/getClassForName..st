other
getClassForName: aString

	^self subclasses detect: [:each | each roleName = aString] ifNone: [OrbeonManagerUserRole]