other
testComparision_3
	| comparator id |

	id := UUID new asString.
	formOne := OrbeonPublishedFormDefinition new
				id: id;
				setApplication: 'agesic';
				formName: 'comparision';
				xmlString: self newDefinitionTemplate formDefinition_agesic_test_comparison_3;
				buildForm;
				yourself.

	formTwo := OrbeonPublishedFormDefinition new
				id: id;
				setApplication: 'agesic';
				formName: 'comparision';
				xmlString: self newDefinitionTemplate formDefinition_agesic_test_comparison_4;
				buildForm;
				yourself.

	comparator	:= formOne compareWith: formTwo.

	self assert: (comparator differencesSize = 3).

	self assert: ((comparator differencesSelect: [:each | each isFieldDoesNotExist]) size = 2).

	self assert: ((comparator differencesSelect: [:each | each isGridDoesNotExist]) size = 1).