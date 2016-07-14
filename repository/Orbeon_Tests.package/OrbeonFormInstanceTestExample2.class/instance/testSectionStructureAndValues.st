other
testSectionStructureAndValues
	| sectionNormal sectionRepeatables iteration1 iteration2 iteration3 subSection |

	"Main Sections"
	self assert: ((form sections select: [:each | each name = 'section-normal']) size = 1).
	self assert: ((form sections select: [:each | each name = 'section-repeatable']) size = 3)."repeatable section"

	"Main Sections - Fields"
	sectionNormal := form sections detect: [:each | each name = 'section-normal'] ifNone: [self assert: false].
	sectionRepeatables := form sections select: [:each | each name = 'section-repeatable'].
	iteration1 := sectionRepeatables at: 1.
	iteration2 := sectionRepeatables at: 2. 
	iteration3 := sectionRepeatables at: 3.

	self assert: ((sectionNormal valueAt: 'name') = 'Bruno').
	self assert: ((sectionNormal valueAt: 'surname') = 'Buzzi').

	self assert: ((iteration1 valueAt: 'phones') = '4087536').
	subSection := iteration1 subSections detect: [:each | each name = 'section-sub'] ifNone: [self assert: false].
	self assert: ((subSection valueAt: 'address') = 'chana').

	self assert: ((iteration2 valueAt: 'phones') = '0999').
	subSection := iteration2 subSections detect: [:each | each name = 'section-sub'] ifNone: [self assert: false].
	self assert: ((subSection valueAt: 'address') = 'Libre').

	self assert: ((iteration3 valueAt: 'phones') = '712').
	subSection := iteration3 subSections detect: [:each | each name = 'section-sub'] ifNone: [self assert: false].
	self assert: ((subSection valueAt: 'address') = 'pocitos').