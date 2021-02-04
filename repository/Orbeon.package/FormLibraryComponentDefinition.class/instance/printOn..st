other
printOn: aStream

	super printOn: aStream.

	aStream nextPutAll: '[', publishedComponent getApplicationName, '.', publishedComponent getFormName, '.v', publishedComponent printVersion,'][', name, ']'.