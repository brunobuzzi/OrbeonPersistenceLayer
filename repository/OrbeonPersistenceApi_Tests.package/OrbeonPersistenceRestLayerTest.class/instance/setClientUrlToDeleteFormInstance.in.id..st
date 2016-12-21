service-delete
setClientUrlToDeleteFormInstance: formName in: appName id: id

	restClient url: self gemstoneIP, '/orbeon-gemstone-api/crud/', appName, '/', formName, '/data/', id, '/data.xml'