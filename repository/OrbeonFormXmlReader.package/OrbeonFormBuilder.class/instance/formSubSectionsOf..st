orbeon sections
formSubSectionsOf: xmlElement
	"Answer a collection with the subsection of <xmlElement>"

	^(xmlElement xPath: systemRoot dataFormatVersion frSectionXpath) asOrderedCollection