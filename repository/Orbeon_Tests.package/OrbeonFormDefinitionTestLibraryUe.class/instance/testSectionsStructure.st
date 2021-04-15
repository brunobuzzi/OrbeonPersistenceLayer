tests
testSectionsStructure
	| section |

	self assert: (form sectionDefinitionsSize = 2).
	self assert: (form fieldDefinitionsSize = 5).
	self assert: ((form getAllSectionsIn: OrderedCollection new) size = 2).

	section := form getSectionNamed: 'section-name'.
	section getFieldNamed: 'name' ifAbsent: [self assert: false].
	section getFieldNamed: 'surname' ifAbsent: [self assert: false].

	section := form getSectionNamed: 'section-address'.
	section getFieldNamed: 'street' ifAbsent: [self assert: false].
	section getFieldNamed: 'number' ifAbsent: [self assert: false].
	section getFieldNamed: 'subNumber' ifAbsent: [self assert: false].