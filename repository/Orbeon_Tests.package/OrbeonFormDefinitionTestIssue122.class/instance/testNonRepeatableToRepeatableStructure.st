other
testNonRepeatableToRepeatableStructure
	| formInstance |

	formInstance := (OrbeonFormInstance newFor: form withId: UUID new asString)
					definition: form;
					xmlString: OrbeonFormInstanceTemplate form_issue122;
					processXML;
					yourself.

	self assert: (formInstance multipleFieldValuesAt: 'street') notNil.
	self assert: ((formInstance multipleFieldValuesAt: 'street') includes: 'chana').
	self assert: (formInstance multipleFieldValuesAt: 'number') notNil.
	self assert: ((formInstance multipleFieldValuesAt: 'number') includes: '1938').
	self assert: (formInstance multipleFieldValuesAt: 'subNumber') notNil.
	self assert: ((formInstance multipleFieldValuesAt: 'subNumber') includes: '101').

self halt.