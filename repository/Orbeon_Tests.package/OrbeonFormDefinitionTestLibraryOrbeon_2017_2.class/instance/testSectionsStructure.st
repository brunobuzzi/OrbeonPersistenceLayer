other
testSectionsStructure
	| section |

	self assert: (form sectionDefinitions size = 2).
	self assert: (form fieldDefinitions size = 8).
	self assert: ((form getAllSectionsIn: OrderedCollection new) size = 2).

	section := form getSectionNamed: 'internal-section'.
	section getFieldNamed: 's' ifAbsent: [self assert: false].
	section getFieldNamed: 'k' ifAbsent: [self assert: false].
	section getFieldNamed: 'uuid' ifAbsent: [self assert: false].
	section getFieldNamed: 'oop' ifAbsent: [self assert: false].
	section getFieldNamed: 'assignmentOop' ifAbsent: [self assert: false].

	section := form getSectionNamed: 'login-section'.
	section getFieldNamed: 'username' ifAbsent: [self assert: false].
	section getFieldNamed: 'rol' ifAbsent: [self assert: false].
	section getFieldNamed: 'processId' ifAbsent: [self assert: false].