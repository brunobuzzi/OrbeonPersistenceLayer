other
testMainSectionsStructure
	| section1 section2 |

	self assert: (form sectionDefinitionsSize = 2).
	self assert: (form fieldDefinitionsSize = 23).
	self assert: ((form getAllSectionsIn: OrderedCollection new) size = 4).

	self assert: (form getSectionNamed: 'section-1') notNil.
	self assert: (form getSectionNamed: 'section-14') notNil.

	section1 := form getSectionNamed: 'section-1'.
	section2 := form getSectionNamed: 'section-14'.
	self assert: (section1 name = 'section-1').
	self assert: (section2 name = 'section-14').

	self assert: (section1 subSectionsSize = 1).
	self assert: (section2 subSectionsSize = 1).

	self assert: (section1 subSectionsLast name = 'section-7').
	self assert: (section2 subSectionsLast name = 'section-24').