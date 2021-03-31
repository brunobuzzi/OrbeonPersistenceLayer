orbeon sections
formSubSectionsOf: xmlElement
	| subSections |

	subSections := OrderedCollection new.
	xmlElement elementsAt: self dataFormatVersion frSectionXpath do: [:eachSection | subSections add: eachSection].
	^subSections