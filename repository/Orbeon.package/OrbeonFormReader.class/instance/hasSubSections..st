orbeon sections
hasSubSections: xmlElement
	"Answer whether or not <xmlElement> has sub sections"

	^(xmlElement elementsAt: 'fr:section') notEmpty