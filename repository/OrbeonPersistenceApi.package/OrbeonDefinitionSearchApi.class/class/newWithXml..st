other
newWithXml: xmlString 

	^(super newWithXml: xmlString)
		parseXmlString;
		yourself