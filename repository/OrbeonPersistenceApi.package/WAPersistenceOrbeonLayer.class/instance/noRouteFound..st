delete this
noRouteFound: aRequestContext
	| logEntry |
self halt.
	logEntry := ObjectLogEntry error: 'REST Service NOT found' object: aRequestContext request printString.
	logEntry addToLog.
	aRequestContext responseGenerator
		notFound;
		respond