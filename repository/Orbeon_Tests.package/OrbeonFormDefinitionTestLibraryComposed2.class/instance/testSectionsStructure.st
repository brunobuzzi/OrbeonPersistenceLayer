other
testSectionsStructure
	| section |

	section := form getSectionNamed: 'section-2'.
	section getFieldNamed: 's' ifAbsent: [self assert: false].
	section getFieldNamed: 'k' ifAbsent: [self assert: false].
	section getFieldNamed: 'uuid' ifAbsent: [self assert: false].
	section getFieldNamed: 'oop' ifAbsent: [self assert: false].
	section getFieldNamed: 'assignmentOop' ifAbsent: [self assert: false].

	section := form getSectionNamed: 'section-7'.
	section getFieldNamed: 'username' ifAbsent: [self assert: false].
	section getFieldNamed: 'rol' ifAbsent: [self assert: false].
	section getFieldNamed: 'processId' ifAbsent: [self assert: false].

	section := form getSectionNamed: 'section-11'.
	section getFieldNamed: 'name' ifAbsent: [self assert: false].
	section getFieldNamed: 'surname' ifAbsent: [self assert: false].

	section := form getSectionNamed: 'section-14'.
	section getFieldNamed: 'street' ifAbsent: [self assert: false].
	section getFieldNamed: 'number' ifAbsent: [self assert: false].
	section getFieldNamed: 'subNumber' ifAbsent: [self assert: false].

	self assert: (form sectionDefinitions size = 4).
	self assert: (form fieldDefinitions size = 13).
	self assert: ((form getAllSectionsIn: OrderedCollection new) size = 4).