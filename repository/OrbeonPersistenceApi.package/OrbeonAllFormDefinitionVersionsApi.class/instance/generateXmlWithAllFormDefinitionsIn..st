other
generateXmlWithAllFormDefinitionsIn: anOrbeonApplication
	| xmlWriter |

	xmlWriter := XMLWriter new.

	xmlWriter writeWith: [:writer | 
		writer tag: 'forms' with: [
			anOrbeonApplication currentVersionsOf: self getFormName do: [:publishedVersion | self generateXmlNodeForFormBuilderVersionList: publishedVersion with: writer].
		].
	].

	^xmlWriter contents