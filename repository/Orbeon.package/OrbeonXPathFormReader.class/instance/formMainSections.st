orbeon sections
formMainSections

	"check for the existence of the structure"
	(xmlDocument xPath: 'boolean(xh:html/xh:body/fr:view/fr:body)') 
	ifFalse: [^OrbeonInvalidXMLException signal: 'Bad format - No <xh:html> element'].

	^(xmlDocument xPath: 'xh:html/xh:body/fr:view/fr:body/fr:section') asOrderedCollection