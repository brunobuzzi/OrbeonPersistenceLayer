tests
testSectionStructureAndValues
	| section1 section14 section7 section24 grid10 grid19 |

	"Main Sections"
	self assert: ((form sectionsSelect: [:each | each name = 'section-1']) size = 1).
	self assert: ((form sectionsSelect: [:each | each name = 'section-14']) size = 1).

	"Main Sections - Fields"
	section1 := form sectionsDetect: [:each | each name = 'section-1'] ifNone: [self assert: false].
	section14 := form sectionsDetect: [:each | each name = 'section-14'] ifNone: [self assert: false].

	self assert: ((section1 valueAt: 'name') = 'Bruno').
	self assert: ((section1 valueAt: 'surname') = 'Buzzi Brassesco').
	self assert: ((section1 valueAt: 'phone') = '4444444445').
	self assert: ((section1 valueAt: 'mail') = 'b@b.st').
	self assert: ((section1 valueAt: 'boolean') = true).

	self assert: ((section14 valueAt: 'date1') = (Date fromString: '04/09/2021')).
	self assert: ((section14 valueAt: 'dateTime') = (TimeStamp fromString: '04/09/2021 17:21:30')).
	self assert: ((section14 valueAt: 'date2') = (Date fromString: '04/09/2021')).
	self assert: ((section14 valueAt: 'date3') = (Date fromString: '04/09/2021')).
	self assert: ((section14 valueAt: 'details') = 'Some details here').
	self assert: ((section14 valueAt: 'type') = '2').

	"SubSection 7 - Fields"
	section7 := section1 subSectionsDetect: [:each | each name = 'section-7'] ifNone: [self assert: false].

	self assert: ((section7 valueAt: 'control-8') = '').
	self assert: ((section7 valueAt: 'mobile') = '0995689').

	grid10 := section7 getGridNamed: 'grid-10' ifAbsent: [self assert: false].
	self assert: ((grid10 getAllValuesFor: 'moneySubject') includes: '1').
	self assert: ((grid10 getAllValuesFor: 'quantity') includes: 12).
	self assert: ((grid10 getAllValuesFor: 'currency') includes: 45.36).

	"SubSection 14 - Fields"
	section24 := section14 subSectionsDetect: [:each | each name = 'section-24'] ifNone: [self assert: false].

	self assert: ((section24 valueAt: 'formatedText') findString: 'This is rich text editor') ~= 0.

	grid19 := section14 getGridNamed: 'grid-19' ifAbsent: [self assert: false].
	self assert: ((grid19 getAllValuesFor: 'options') includes: '1').
	self assert: ((grid19 getAllValuesFor: 'options') includes: '2').
	self assert: ((grid19 getAllValuesFor: 'otherOptions') includes: '2').
	self assert: ((grid19 getAllValuesFor: 'otherOptions') includes: '3').