attachments
getAttachmentsFields

	^(xmlDocument xPath: self defaultOrbeonDataFormatVersion frViewFrAttachmentXpath) , 
		(xmlDocument xPath: self defaultOrbeonDataFormatVersion frViewFrImageAttachmentXpath),
		(xmlDocument xPath: self defaultOrbeonDataFormatVersion frViewContainsFbAttachmentXpathFunction)