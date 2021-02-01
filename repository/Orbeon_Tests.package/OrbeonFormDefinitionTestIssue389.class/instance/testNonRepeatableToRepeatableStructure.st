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
	self assert: ((formInstance multipleFieldValuesAt: 'country') includes: 'Argetina').

	self assert: ((formInstance multipleFieldValuesAt: 'city') includes: 'Montevideo').
	self assert: ((formInstance multipleFieldValuesAt: 'city') includes: 'Punta del Este').
	self assert: ((formInstance multipleFieldValuesAt: 'city') includes: 'Buenos Aires').
	self assert: ((formInstance multipleFieldValuesAt: 'city') includes: 'La Plata').
	
"	(formInstance sectionsSelect: [:sec | sec name = 'section-2']) do: [:section |
		self assert: ((section valueAt: 'street') = 'chana').
		self assert: (((section valueAt: 'number') = '1938') or: [(section valueAt: 'number') = '555']).
		self assert: (((section valueAt: 'subNumber') = '101') or: [(section valueAt: 'number') = '4']).
	].
"