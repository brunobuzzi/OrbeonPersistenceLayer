service-delete
setClientUrlToPublishFormDefinition: formName in: appName id: id

	restClient url: self gemstoneIP, '/orbeon-gemstone-api/crud/', appName, '/', formName, '/form/form.xhtml?document=', id.