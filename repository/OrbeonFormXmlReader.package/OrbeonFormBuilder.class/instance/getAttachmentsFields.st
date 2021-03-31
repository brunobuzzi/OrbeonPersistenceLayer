attachments
getAttachmentsFields

	^(xmlDocument xPath: self defaultOrbeonXpathVersion frViewFrAttachmentXpath) , 
		(xmlDocument xPath: self defaultOrbeonXpathVersion frViewFrImageAttachmentXpath),
		(xmlDocument xPath: self defaultOrbeonXpathVersion frViewContainsFbAttachmentXpathFunction)