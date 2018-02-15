other
newWithXml: xmlString

	^super new initialize
		xmlString: xmlString;
		newFormReader;
		yourself