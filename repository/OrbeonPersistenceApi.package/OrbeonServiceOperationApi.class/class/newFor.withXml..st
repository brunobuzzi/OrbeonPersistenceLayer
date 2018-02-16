other
newFor: aWARestfulHandler withXml: xmlString

	^(self newFor: aWARestfulHandler)
		xmlString: xmlString;
		yourself