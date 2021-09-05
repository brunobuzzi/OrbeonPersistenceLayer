other
testComparision_2
	| comparator id |

	id := UUID new asString.
	formOne := self defaultPublishedFormDefinitionClass new
				application: application;
				id: id;
				setApplication: 'agesic';
				formName: 'comparision';
				xmlString: testRoot newDefinitionTemplate formDefinition_agesic_test_comparison_1;
				buildForm;
				yourself.

	formTwo := self defaultPublishedFormDefinitionClass new
				application: application;
				id: id;
				setApplication: 'agesic';
				formName: 'comparision';
				xmlString: testRoot newDefinitionTemplate formDefinition_agesic_test_comparison_2;
				buildForm;
				yourself.

	comparator := formOne compareWith: formTwo.

	self assert: comparator differencesSize equals: 9.

	self assert: (comparator differencesSelect: [:each | each isFieldTypeChanged]) size equals: 2.

	self assert: (comparator differencesSelect: [:each | each isFieldDoesNotExist]) size equals: 6.

	self assert: (comparator differencesSelect: [:each | each isSectionDoesNotExist]) size equals: 1.