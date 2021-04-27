other
testComparision_2
	| comparator id |

	id := UUID new asString.
	formOne := self defaultPublishedFormDefinitionClass new
				id: id;
				setApplication: 'agesic';
				formName: 'comparision';
				xmlString: self newDefinitionTemplate formDefinition_agesic_test_comparison_1;
				buildForm;
				yourself.

	formTwo := self defaultPublishedFormDefinitionClass new
				id: id;
				setApplication: 'agesic';
				formName: 'comparision';
				xmlString: self newDefinitionTemplate formDefinition_agesic_test_comparison_2;
				buildForm;
				yourself.

	comparator := formOne compareWith: formTwo.

	comparator := formOne compareWith: formTwo.

	self assert: (comparator differencesSize = 9).

	self assert: ((comparator differencesSelect: [:each | each isFieldTypeChanged]) size = 2).

	self assert: ((comparator differencesSelect: [:each | each isFieldDoesNotExist]) size = 6).

	self assert: ((comparator differencesSelect: [:each | each isSectionDoesNotExist]) size = 1).