service-delete
setClientUrlToDeleteFormDefinitionWithId: id

	restClient url: self gemstoneIP, '/orbeon-gemstone-api/crud/orbeon/builder/data/', id, '/data.xml'