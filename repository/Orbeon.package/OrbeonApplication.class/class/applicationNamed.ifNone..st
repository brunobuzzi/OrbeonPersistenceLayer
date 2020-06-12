application operations
applicationNamed: aString ifNone: aBlock
	"Answer an OrbeonApplication or BpmApplication named <aString> if none evaluates the zero block argument <aBlock>"

	^self detectInOrbeonCache: [:each | each applicationName = aString] ifNone: aBlock