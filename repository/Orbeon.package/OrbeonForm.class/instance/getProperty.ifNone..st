other
getProperty: propertieName ifNone: aBlock

	^properties at: propertieName ifAbsent: aBlock