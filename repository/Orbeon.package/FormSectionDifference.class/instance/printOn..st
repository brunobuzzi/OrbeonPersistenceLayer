other
printOn: aStream

	super printOn: aStream.

	aStream nextPutAll: '[',section name, ']'