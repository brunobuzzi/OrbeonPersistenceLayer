other
testSectionStructureAndValues
	| mainSections mainIteration1 mainIteration2 subSections subSection grid subSubSections subSubSection |

	"Main Sections"
	self assert: ((form sections select: [:each | each name = 'main-section']) size = 2).

	"Main Sections - Fields"
	mainSections := form sections select: [:each | each name = 'main-section'].
	mainIteration1 := mainSections at: 1.
	mainIteration2 := mainSections at: 2. 
	"ITERATION 1"
	self assert: ((mainIteration1 valueAt: 'name') = 'Bruno').
	grid := mainIteration1 grids at: 'grid-4' ifAbsent: [self assert: false].
	self assert: ((grid getAllValuesFor: 'surname') includes: 'Buzzi').
	self assert: ((grid getAllValuesFor: 'surname') includes: 'Brassesco').
	subSections := mainIteration1 subSections select: [:each | each name = 'section-7'].
		self assert: (subSections size = 2).
		subSection := subSections at: 1.
		grid := subSection grids at: 'grid-10' ifAbsent: [self assert: false].
		self assert: ((subSection valueAt: 'address') = 'Chana 1938').
		self assert: ((grid getAllValuesFor: 'phone') includes: '408').
		self assert: ((grid getAllValuesFor: 'phone') includes: '407').
		subSubSections := subSection subSections select: [:each | each name = 'section-13'].
			self assert: (subSubSections size = 2).
			subSubSection := subSubSections at: 1.
			self assert: ((subSubSection valueAt: 'housePlace') = 'Comedor').
			grid := subSubSection grids at: 'grid-16' ifAbsent: [self assert: false].
			self assert: ((grid getAllValuesFor: 'placeElements') includes: 'Mesa').
			self assert: ((grid getAllValuesFor: 'placeElements') includes: 'Tele').
			subSubSection := subSubSections at: 2.
			self assert: ((subSubSection valueAt: 'housePlace') = 'Cocina').
			grid := subSubSection grids at: 'grid-16' ifAbsent: [self assert: false].
			self assert: ((grid getAllValuesFor: 'placeElements') includes: 'Cocina').
			self assert: ((grid getAllValuesFor: 'placeElements') includes: 'Heladera').
		subSection := subSections at: 2.
		grid := subSection grids at: 'grid-10' ifAbsent: [self assert: false].
		self assert: ((subSection valueAt: 'address') = 'Colonia 124').
		self assert: ((grid getAllValuesFor: 'phone') includes: '901').
		subSubSections := subSection subSections select: [:each | each name = 'section-13'].
			self assert: (subSubSections size = 2).
			subSubSection := subSubSections at: 1.
			self assert: ((subSubSection valueAt: 'housePlace') = 'Barbacoa').
			grid := subSubSection grids at: 'grid-16' ifAbsent: [self assert: false].
			self assert: ((grid getAllValuesFor: 'placeElements') includes: 'Parrilla').
			self assert: ((grid getAllValuesFor: 'placeElements') includes: 'BaÃ±o').
			subSubSection := subSubSections at: 2.
			self assert: ((subSubSection valueAt: 'housePlace') = 'Comedor').
			grid := subSubSection grids at: 'grid-16' ifAbsent: [self assert: false].
			self assert: ((grid getAllValuesFor: 'placeElements') includes: 'Mesa').
			self assert: ((grid getAllValuesFor: 'placeElements') includes: 'Tele').
	"ITERATION 2"
	self assert: ((mainIteration2 valueAt: 'name') = 'Alfredo').
	grid := mainIteration2 grids at: 'grid-4' ifAbsent: [self assert: false].
	self assert: ((grid getAllValuesFor: 'surname') includes: 'Pereira').
	self assert: ((grid getAllValuesFor: 'surname') includes: 'Nieto').
	subSections := mainIteration2 subSections select: [:each | each name = 'section-7'].
		self assert: (subSections size = 2).
		subSection := subSections at: 1.
		grid := subSection grids at: 'grid-10' ifAbsent: [self assert: false].
		self assert: ((subSection valueAt: 'address') = 'Punta del Este1345').
		self assert: ((grid getAllValuesFor: 'phone') includes: '368').
		subSubSections := subSection subSections select: [:each | each name = 'section-13'].
			self assert: (subSubSections size = 1).
			subSubSection := subSubSections at: 1.
			self assert: ((subSubSection valueAt: 'housePlace') = 'Comedor').
			grid := subSubSection grids at: 'grid-16' ifAbsent: [self assert: false].
			self assert: ((grid getAllValuesFor: 'placeElements') includes: 'Tele Gigante').
		subSection := subSections at: 2.
		grid := subSection grids at: 'grid-10' ifAbsent: [self assert: false].
		self assert: ((subSection valueAt: 'address') = '18 de Julio').
		self assert: ((grid getAllValuesFor: 'phone') includes: '909').
		subSubSections := subSection subSections select: [:each | each name = 'section-13'].
			self assert: (subSubSections size = 1).
			subSubSection := subSubSections at: 1.
			self assert: ((subSubSection valueAt: 'housePlace') = 'Sala').
			grid := subSubSection grids at: 'grid-16' ifAbsent: [self assert: false].
			self assert: ((grid getAllValuesFor: 'placeElements') includes: 'TV').