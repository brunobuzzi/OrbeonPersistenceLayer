type-mapping
printOn: aStream

	super printOn: aStream.

	aStream nextPutAll: '[', self getApplicationName, '.', self getFormName, '.v', self printVersion,']'