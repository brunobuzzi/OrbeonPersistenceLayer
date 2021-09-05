tests
testNonRepeatableToRepeatableStructure
	| formInstance |

	formInstance := (OrbeonFormInstance newFor: form withId: UUID new asString)
					definition: form;
					xmlString: testRoot newInstanceTemplate formInstance_ue_issue_122;
					buildForm;
					yourself.

	self assert: (formInstance multipleFieldValuesAt: 'street') notNil.
	self assert: ((formInstance multipleFieldValuesAt: 'street') includes: 'chana').
	self assert: (formInstance multipleFieldValuesAt: 'number') notNil.
	self assert: ((formInstance multipleFieldValuesAt: 'number') includes: '1938').
	self assert: ((formInstance multipleFieldValuesAt: 'number') includes: '555').
	self assert: (formInstance multipleFieldValuesAt: 'subNumber') notNil.
	self assert: ((formInstance multipleFieldValuesAt: 'subNumber') includes: '101').
	self assert: ((formInstance multipleFieldValuesAt: 'subNumber') includes: '4').

	(formInstance sectionsSelect: [:sec | sec name = 'section-2']) do: [:section |
		self assert: ((section valueAt: 'street') = 'chana').
		self assert: (((section valueAt: 'number') = '1938') or: [(section valueAt: 'number') = '555']).
		self assert: (((section valueAt: 'subNumber') = '101') or: [(section valueAt: 'subNumber') = '4']).
	].