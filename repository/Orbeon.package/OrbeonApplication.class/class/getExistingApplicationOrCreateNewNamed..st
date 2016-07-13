application operations
getExistingApplicationOrCreateNewNamed: aString
	"The receiver answer a instance of it self named <aString>. 
	If it is present in the cache --> answer the existing one.
	If absent --> create a new one"

	^self cache 
		at: aString 
		ifPresent: [:application | application]
		ifAbsent: [super new initialize
						applicationName: aString;
						addToCache;
						yourself]