cache
removeFromCache

	applicationName ifNil: [^self throwExceptionNoApplicationName].
	applicationName isEmpty ifTrue: [^self throwExceptionNoApplicationName].

	(self cache includesKey: applicationName) ifFalse: [^self throwExceptionNotInCache].

	self canDelete ifFalse: [^ImproperApplicationOperationException signal: 'This Application can not be removed from cache. Check #canDelete method !!!'].

	^self cache removeKey: applicationName