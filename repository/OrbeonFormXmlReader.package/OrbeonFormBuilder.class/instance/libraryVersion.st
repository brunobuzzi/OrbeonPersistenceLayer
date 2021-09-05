metadata
libraryVersion

	^(xmlDocument xPath: systemRoot dataFormatVersion xfInstanceMetadataLibraryVersionXpath)
		ifEmpty: [LibraryReferenceException signal: 'This form does not contain references to a Library' ] 
		ifNotEmpty: [:collection | Integer fromString: collection first innerXML]