other
testSectionsStructure
	| section grid |

	self assert: (form sectionDefinitions size = 3).
	self assert: (form fieldDefinitions size = 6).
	self assert: ((form getAllSectionsIn: OrderedCollection new) size = 3).

	section := form getSectionNamed: 'userInfoSection'.
	section getFieldNamed: 'name' ifAbsent: [self assert: false].
	section getFieldNamed: 'surname' ifAbsent: [self assert: false].
	grid := section getGridDefinitionNamed: 'grid-mobile' ifNone: [self assert: false].
	grid getFieldNamed: 'mobile' ifAbsent: [self assert: false].

	section := form getSectionNamed: 'section-8'.
	section getFieldNamed: 'code' ifAbsent: [self assert: false].
	grid := section getGridDefinitionNamed: 'grid-amount' ifNone: [self assert: false].
	grid getFieldNamed: 'mount' ifAbsent: [self assert: false].

	section := form getSectionNamed: 'section-grid'.
	grid := section getGridDefinitionNamed: 'grid-15' ifNone: [self assert: false].
	grid getFieldNamed: 'number' ifAbsent: [self assert: false].