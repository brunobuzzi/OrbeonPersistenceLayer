other
testSectionsStructure
	| section subSection grid |

	self assert: (form sectionDefinitions size = 4).
	self assert: (form fieldDefinitions size = 35).
	self assert: ((form getAllSectionsIn: OrderedCollection new) size = 5).

	self assert: (form sectionDefinitions includesKey: 'Datos-generales').
	self assert: (form sectionDefinitions includesKey: 'section-41').
	self assert: (form sectionDefinitions includesKey: 'section-53').
	self assert: (form sectionDefinitions includesKey: 'section-81').

	section := form getSectionNamed: 'section-53'.
	subSection := section getSubSectionNamed: 'section-47' ifNone: [self assert: false].
	self assert: subSection notNil.

	grid := section getGridDefinitionNamed: 'grid-43' ifNone: [self assert: false].
	self assert: grid notNil.
	grid := subSection getGridDefinitionNamed: 'grid-50' ifNone: [self assert: false].
	self assert: grid notNil.

	section := form getSectionNamed: 'section-81'.	
	grid := section getGridDefinitionNamed: 'grid-83' ifNone: [self assert: false].
	self assert: grid notNil.