other
testSectionStructureAndValues
	| sectionsUser sections8 sectionsGrid grid |
	"Main Sections"
	sectionsUser := form sectionsSelect: [:each | each name = 'userInfoSection'].
	sections8 := form sectionsSelect: [:each | each name = 'section-8'].
	sectionsGrid := form sectionsSelect: [:each | each name = 'section-grid'].

	self assert: sectionsUser notEmpty.
	self assert: sections8 notEmpty.
	self assert: sectionsGrid notEmpty.

	(form sectionsSelect: [:each | each name = 'userInfoSection'])
		do: [:sectionInst | 
				self assert: (#('bruno' 'alberto') includes: (sectionInst valueAt: 'name')).
				self assert: (#('buzzi' 'joya') includes: (sectionInst valueAt: 'surname')).
		].
	sectionsUser do: [:eachSection |
		grid := eachSection getGridNamed: 'grid-mobile'.
		grid gridIterations do: [:eachDictionary | 
			self assert: (#('099' '098' '123' '789' '456') includes: (eachDictionary at: 'mobile')).		
			]. 
	].

	(form sectionsSelect: [:each | each name = 'section-8'])
		do: [:sectionInst | 
				self assert: (#('888' '999') includes: (sectionInst valueAt: 'code')).
		].
	sections8 do: [:eachSection |
		grid := eachSection getGridNamed: 'grid-amount'.
		grid gridIterations do: [:eachDictionary | 
			self assert: (#('100' '1500' '2000' '2500' '3000') includes: (eachDictionary at: 'mount')).		
			]. 
	].

	sectionsGrid do: [:eachSection |
		grid := eachSection getGridNamed: 'grid-15'.
		grid gridIterations do: [:eachDictionary | 
			self assert: (#('020' '021') includes: (eachDictionary at: 'number')).		
			]. 
	].