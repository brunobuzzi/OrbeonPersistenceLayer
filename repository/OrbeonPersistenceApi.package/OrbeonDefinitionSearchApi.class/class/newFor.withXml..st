other
newFor: aWARestfulHandler withXml: xmlString 

	^(super newFor: aWARestfulHandler withXml: xmlString)
		parseXmlString;
		yourself