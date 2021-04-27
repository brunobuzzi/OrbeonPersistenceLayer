other
testComparision_1
	| comparator id |

	id := UUID new asString.
	formOne := self defaultPublishedFormDefinitionClass new
				id: id;
				setApplication: 'agesic';
				formName: 'comparision';
				xmlString: self newDefinitionTemplate formDefinition_agesic_comparison_v1;
				buildForm;
				yourself.

	formTwo := self defaultPublishedFormDefinitionClass new
				id: id;
				setApplication: 'agesic';
				formName: 'comparision';
				xmlString: self newDefinitionTemplate formDefinition_agesic_comparison_v2;
				buildForm;
				yourself.

	comparator := formOne compareWith: formTwo.

	self assert: (comparator differencesSize = 6).

	self assert: ((comparator differencesSelect: [:each | each isFieldTypeChanged]) size = 1).

	self assert: ((comparator differencesSelect: [:each | each isFieldDoesNotExist]) size = 4).

	self assert: ((comparator differencesSelect: [:each | each isSectionDoesNotExist]) size = 1).