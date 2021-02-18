xbl
xblNode

	^(xmlDocument xPath: self defaultOrbeonXpathVersion xhXblXbl)
		ifEmpty: [nil] 
		ifNotEmpty: [:collection | collection first ]