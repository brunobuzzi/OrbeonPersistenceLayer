xbl
xblNode

	^(xmlDocument xPath: self defaultOrbeonDataFormatVersion xhXblXbl)
		ifEmpty: [nil] 
		ifNotEmpty: [:collection | collection first ]