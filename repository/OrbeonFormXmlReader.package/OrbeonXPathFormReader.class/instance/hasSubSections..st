orbeon sections
hasSubSections: xmlElement
	"Answer whether or not <xmlElement> has sub sections"

	^(self formSubSectionsOf: xmlElement) notEmpty