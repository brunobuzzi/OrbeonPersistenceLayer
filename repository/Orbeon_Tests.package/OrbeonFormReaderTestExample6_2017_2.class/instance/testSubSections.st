test
testSubSections
	| subSection |

	subSection := OrderedCollection new.
	reader formMainSections do: [:eachSection | (reader formSubSectionsOf: eachSection) do: [:eachSubSec | subSection add: eachSubSec]].

	self assert: (subSection size = 1).

	self assert: (((subSection at: 1) attributeAt: 'id') = 'section-4-section').