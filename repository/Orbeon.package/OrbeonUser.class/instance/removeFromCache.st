other
removeFromCache

	^self class cache removeKey: self name ifAbsent: [nil]