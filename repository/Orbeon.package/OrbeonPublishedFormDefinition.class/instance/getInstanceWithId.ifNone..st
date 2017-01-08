form instances
getInstanceWithId: aString ifNone: aBlock

	^instances at: aString ifAbsent: aBlock