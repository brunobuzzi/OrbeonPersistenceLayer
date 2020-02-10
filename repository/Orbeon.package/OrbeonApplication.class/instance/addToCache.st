cache
addToCache
	"Add the receiver to the global cache that store instances of <BpmApplication> and <OrbeonApplication>.
	The receiver must have a name and the name can not be an empty <String>"

	applicationName ifNil: [^self throwExceptionNoApplicationName].
	applicationName isEmpty ifTrue: [^self throwExceptionNoApplicationName].

	(self cache includesKey: applicationName) ifTrue: [^self cache at: applicationName].

	^self cache at: applicationName put: self