other
testSectionStructureAndValues
	| section1 section14 section7 section24 grid10 grid19 |

	"Main Sections"
	self assert: ((form sections select: [:each | each name = 'section-1']) size = 1).
	self assert: ((form sections select: [:each | each name = 'section-14']) size = 1).

	"Main Sections - Fields"
	section1 := form sections detect: [:each | each name = 'section-1'] ifNone: [self assert: false].
	section14 := form sections detect: [:each | each name = 'section-14'] ifNone: [self assert: false].

	self assert: ((section1 valueAt: 'name') = 'bruno').
	self assert: ((section1 valueAt: 'surname') = 'buzzo').
	self assert: ((section1 valueAt: 'phone') = '4444444445').
	self assert: ((section1 valueAt: 'mail') = 'b@e.tv').
	self assert: ((section1 valueAt: 'boolean') = 'true').

	self assert: ((section14 valueAt: 'date1') = '2016-04-08').
	self assert: ((section14 valueAt: 'dateTime') = '2016-04-13T12:50:00').
	self assert: ((section14 valueAt: 'date2') = '2006-07-07').
	self assert: ((section14 valueAt: 'date3') = '2016-04-19').
	self assert: ((section14 valueAt: 'details') = 'these are the details').
	self assert: ((section14 valueAt: 'type') = '1').

	"SubSection 7 - Fields"
	section7 := section1 subSections detect: [:each | each name = 'section-7'] ifNone: [self assert: false].

	self assert: ((section7 valueAt: 'control-8') = '').
	self assert: ((section7 valueAt: 'mobile') = '09998').

	grid10 := section7 grids at: 'grid-10' ifAbsent: [self assert: false].
	self assert: ((grid10 getAllValuesFor: 'moneySubject') includes: '3').
	self assert: ((grid10 getAllValuesFor: 'quantity') includes: '5005').
	self assert: ((grid10 getAllValuesFor: 'currency') includes: '122.5').

	"SubSection 14 - Fields"
	section24 := section14 subSections detect: [:each | each name = 'section-24'] ifNone: [self assert: false].

	self assert: ((section24 valueAt: 'formatedText') findString: 'this is a') ~= 0.

	grid19 := section14 grids at: 'grid-19' ifAbsent: [self assert: false].
	self assert: ((grid19 getAllValuesFor: 'options') includes: '2 1').
	self assert: ((grid19 getAllValuesFor: 'otherOptions') includes: '2').
self halt.