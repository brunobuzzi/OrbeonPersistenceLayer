other
hasApplicationNamed: aString
	"Answer whether or not the cache of the receiver has an instance named <app> as a string <aString>"

	^self cache anySatisfy: [:each | each applicationName = aString]