service-delete
setClientUrlToSaveFormDraft: formName in: appName id: id

	restClient url: self gemstoneIP, '/orbeon-gemstone-api/crud/', appName, '/', formName, '/draft/', id, '/data.xml?valid=true'.