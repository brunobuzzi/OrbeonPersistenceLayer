orbeon sections
formMainSections

	"check for the existence of the structure"
	(xmlDocument xPath: systemRoot dataFormatVersion xhExistFrBodyXpathFunction) 
	ifFalse: [^OrbeonInvalidXMLException signal: 'Bad format - No <xh:html> element'].

	^(xmlDocument xPath: systemRoot dataFormatVersion xhBodyFrViewFrBodyFrSectionsXpath) asOrderedCollection