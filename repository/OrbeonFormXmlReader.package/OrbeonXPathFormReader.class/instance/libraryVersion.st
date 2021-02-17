other
libraryVersion

	^(xmlDocument xPath: self defaultOrbeonXpathVersion xfInstanceMetadataLibraryVersionXpath)
		ifEmpty: [ImproperOrbeonOperationException signal: 'This form does not contain references to a Library' ] 
		ifNotEmpty: [:collection | Integer fromString: collection first innerXML]