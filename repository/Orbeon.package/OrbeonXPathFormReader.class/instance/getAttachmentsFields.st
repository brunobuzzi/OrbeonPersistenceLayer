attachments
getAttachmentsFields

	^(xmlDocument xPath: '//fr:view//fr:attachment') , 
		(xmlDocument xPath: '//fr:view//fr:image-attachment'),
		(xmlDocument xPath: '//fr:view//contains[@class, ''fb-attachment'']')