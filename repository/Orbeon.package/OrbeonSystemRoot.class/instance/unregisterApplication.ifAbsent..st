applications
unregisterApplication: anOrbeonApplication ifAbsent: aBlock

	anOrbeonApplication canDelete ifFalse: [^ImproperOrbeonOperationException signal: 'This application can not be removed. Check #canDelete method'].

	^applications removeKey: anOrbeonApplication applicationName ifAbsent: aBlock