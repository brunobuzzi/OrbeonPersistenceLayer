applications
applicationNamed: applicationName 

	^self applicationNamed: applicationName ifNone: ['No Applicaiton named [', applicationName, ']']