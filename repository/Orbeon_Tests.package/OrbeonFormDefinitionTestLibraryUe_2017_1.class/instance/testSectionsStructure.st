other
testSectionsStructure
	| section |

	self assert: (form sectionDefinitions size = 2).
	self assert: (form fieldDefinitions size = 5).
	self assert: ((form getAllSectionsIn: OrderedCollection new) size = 2).

	section := form getSectionNamed: 'section-name'.
	section getFieldNamed: 'name' ifAbsent: [self assert: false].
	section getFieldNamed: 'surname' ifAbsent: [self assert: false].

	section := form getSectionNamed: 'section-address'.
	section getFieldNamed: 'street' ifAbsent: [self assert: false].
	section getFieldNamed: 'number' ifAbsent: [self assert: false].
	section getFieldNamed: 'subNumber' ifAbsent: [self assert: false].