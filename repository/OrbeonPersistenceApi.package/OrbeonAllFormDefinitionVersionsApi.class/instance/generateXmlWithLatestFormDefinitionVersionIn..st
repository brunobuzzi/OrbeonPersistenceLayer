other
generateXmlWithLatestFormDefinitionVersionIn: anOrbeonApplication
	| xmlWriter |

	xmlWriter := XMLWriter new.

	xmlWriter writeWith: [:writer | 
		writer tag: 'forms' with: [
			self generateXmlNodeForFormBuilderVersionList: (anOrbeonApplication definitionNamed: self getFormName ifNone: [^'<form/>']) with: xmlWriter.
		].
	].

	^xmlWriter contents