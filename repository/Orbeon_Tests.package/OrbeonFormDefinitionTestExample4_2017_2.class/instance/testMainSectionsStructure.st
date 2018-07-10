other
testMainSectionsStructure
	| section1 section2 |

	self assert: (form sectionDefinitions size = 2).
	self assert: (form fieldDefinitions size = 22).
	self assert: ((form getAllSectionsIn: OrderedCollection new) size = 4).

	self assert: (form sectionDefinitions includesKey: 'section-1').
	self assert: (form sectionDefinitions includesKey: 'section-14').

	section1 := form sectionDefinitions at: 'section-1'.
	section2 := form sectionDefinitions at: 'section-14'.
	self assert: (section1 name = 'section-1').
	self assert: (section2 name = 'section-14').

	self assert: (section1 subSections size = 1).
	self assert: (section2 subSections size = 1).

	self assert: (section1 subSections last name = 'section-7').
	self assert: (section2 subSections last name = 'section-24').