applications
unregisterApplication: anOrbeonApplication ifAbsent: aBlock

	^applications removeKey: anOrbeonApplication applicationName ifAbsent: aBlock