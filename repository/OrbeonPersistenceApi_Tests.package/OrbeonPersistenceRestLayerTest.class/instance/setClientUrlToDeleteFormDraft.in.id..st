service-delete
setClientUrlToDeleteFormDraft: formName in: appName id: id

	restClient url: self gemstoneIP, '/orbeon-gemstone-api/crud/', appName, '/', formName, '/draft/', id, '/data.xml'