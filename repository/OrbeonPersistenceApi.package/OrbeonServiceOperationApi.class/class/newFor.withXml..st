other
newFor: aWARestfulHandler withXml: xmlString

	^super new initialize
		restHandler: aWARestfulHandler;
		xmlString: xmlString;
		yourself