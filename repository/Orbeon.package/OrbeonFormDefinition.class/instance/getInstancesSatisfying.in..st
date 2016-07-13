field instances
getInstancesSatisfying: aBlock in: fieldName

	^((fieldInstances at: fieldName ifAbsent: [^OrderedCollection new]) select: aBlock) asOrderedCollection collect: [:each | each parentObject]