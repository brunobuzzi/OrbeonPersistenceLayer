other
testSectionStructureAndValues
	| sectionUser section8 sectionGrid |
	"Main Sections"
	sectionUser := form sections detect: [:each | each name = 'userInfoSection'] ifNone: [nil].
	section8 := form sections detect: [:each | each name = 'section-8'] ifNone: [nil].
	sectionGrid := form sections detect: [:each | each name = 'section-grid'] ifNone: [nil].

	self assert: sectionUser notNil.
	self assert: section8 notNil.
	self assert: sectionGrid notNil.

	(form sections select: [:each | each name = 'userInfoSection'])
		do: [:sectionInst |
				self assert: (#('bruno' 'alberto') includes: (sectionInst valueAt: 'name')).
				self assert: (#('buzzi' 'joya') includes: (sectionInst valueAt: 'surname')).
		].