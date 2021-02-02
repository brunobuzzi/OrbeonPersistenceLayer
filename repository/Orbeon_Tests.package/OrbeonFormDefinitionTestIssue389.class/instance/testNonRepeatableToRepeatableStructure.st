other
testNonRepeatableToRepeatableStructure
	| formInstance |

	formInstance := (OrbeonFormInstance newFor: form withId: UUID new asString)
					definition: form;
					xmlString: OrbeonFormInstanceTemplate form_issue389;
					processXML;
					yourself.

	self assert: ((formInstance multipleFieldValuesAt: 'name') includes: 'bruno').
	self assert: ((formInstance multipleFieldValuesAt: 'name') includes: 'franco').
	self assert: ((formInstance multipleFieldValuesAt: 'name') includes: 'cecilia').
	self assert: ((formInstance multipleFieldValuesAt: 'surname') includes: 'buzzi').
	self assert: ((formInstance multipleFieldValuesAt: 'surname') includes: 'buzzi').
	self assert: ((formInstance multipleFieldValuesAt: 'surname') includes: 'keuroglian').

	self assert: ((formInstance multipleFieldValuesAt: 'country') includes: 'Uruguay').
	self assert: ((formInstance multipleFieldValuesAt: 'country') includes: 'Argentina').

	self assert: ((formInstance multipleFieldValuesAt: 'city') includes: 'Montevideo').
	self assert: ((formInstance multipleFieldValuesAt: 'city') includes: 'Punta del Este').
	self assert: ((formInstance multipleFieldValuesAt: 'city') includes: 'Buenos Aires').
	self assert: ((formInstance multipleFieldValuesAt: 'city') includes: 'La Plata').

	(formInstance sectionsSelect: [:sec | sec name = 'section-1']) do: [:section |
		self assert: ((section valueAt: 'number') = '123456')].

	(formInstance sectionsSelect: [:sec | sec name = 'section-2']) do: [:section |
		self assert: (#('bruno' 'franco' 'cecilia') includes: (section valueAt: 'name')).
		self assert: (#('buzzi' 'buzzi' 'keuroglian') includes: (section valueAt: 'surname')).
	].
	(formInstance sectionsSelect: [:sec | sec name = 'section-3']) keysAndValuesDo: [:index :section | | subSection grid cityCollection |
		self assert: (#('Uruguay' 'Argentina') includes: (section valueAt: 'country')).
		subSection := section subSectionsAt: 1.
		grid := subSection getGridNamed: 'grid-4' ifAbsent: [self assert: false].
		cityCollection := (index = 1) ifTrue: [#('Montevideo' 'Punta del Este')] ifFalse: [#('Buenos Aires' 'La Plata')].
		(grid getAllValuesFor: 'city') do: [:value | cityCollection includes: value]  
	].