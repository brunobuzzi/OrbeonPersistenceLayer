orbeon sections
formMainSections

	"check for the existence of the structure"
	(xmlDocument xPath: self defaultOrbeonXpathVersion xhExistFrBodyXpathFunction) 
	ifFalse: [^OrbeonInvalidXMLException signal: 'Bad format - No <xh:html> element'].

	^(xmlDocument xPath: self defaultOrbeonXpathVersion xhBodyFrViewFrBodyFrSectionsXpath) asOrderedCollection