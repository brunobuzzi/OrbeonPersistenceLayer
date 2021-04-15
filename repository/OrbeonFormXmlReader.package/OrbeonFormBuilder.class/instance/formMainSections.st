orbeon sections
formMainSections

	"check for the existence of the structure"
	(xmlDocument xPath: self defaultOrbeonDataFormatVersion xhExistFrBodyXpathFunction) 
	ifFalse: [^OrbeonInvalidXMLException signal: 'Bad format - No <xh:html> element'].

	^(xmlDocument xPath: self defaultOrbeonDataFormatVersion xhBodyFrViewFrBodyFrSectionsXpath) asOrderedCollection