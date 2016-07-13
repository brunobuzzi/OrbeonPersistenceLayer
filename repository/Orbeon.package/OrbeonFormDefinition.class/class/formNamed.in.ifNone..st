other
formNamed: aString in: appName ifNone: aBlock

	^self cache detect: [:each | each formName = aString and:[each applicationName = appName]] ifNone: aBlock