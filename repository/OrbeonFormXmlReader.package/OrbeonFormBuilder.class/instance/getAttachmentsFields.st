build definition attachments
getAttachmentsFields

	^(xmlDocument xPath: systemRoot dataFormatVersion frViewFrAttachmentXpath) , 
		(xmlDocument xPath: systemRoot dataFormatVersion frViewFrImageAttachmentXpath),
		(xmlDocument xPath: systemRoot dataFormatVersion frViewContainsFbAttachmentXpathFunction)