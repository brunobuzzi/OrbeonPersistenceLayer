orbeon sections
formSubSectionsOf: xmlElement
	| subSections |

	subSections := OrderedCollection new.
	xmlElement elementsAt: self defaultOrbeonXpathVersion frSectionXpath do: [:eachSection | subSections add: eachSection].
	^subSections