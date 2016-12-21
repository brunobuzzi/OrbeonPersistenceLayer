service-delete
setClientUrlForFormSummary: formName in: appName

	restClient url: self gemstoneIP, '/orbeon-gemstone-api/search/', appName,'/', formName