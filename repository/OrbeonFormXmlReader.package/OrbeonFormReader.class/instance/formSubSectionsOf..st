orbeon sections
formSubSectionsOf: xmlElement
	| subSections |

	subSections := OrderedCollection new.
	xmlElement elementsAt: 'fr:section' do: [:eachSection | subSections add: eachSection].
	^subSections