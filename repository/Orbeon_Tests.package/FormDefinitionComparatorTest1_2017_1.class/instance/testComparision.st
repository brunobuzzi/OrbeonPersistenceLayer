other
testComparision
	| comparator |

	comparator := formOne compareWith: formTwo.

	self assert: (comparator differencesSize = 6).

	self assert: ((comparator differencesSelect: [:each | each isFieldTypeChanged]) size = 1).

	self assert: ((comparator differencesSelect: [:each | each isFieldDoesNotExist]) size = 4).

	self assert: ((comparator differencesSelect: [:each | each isSectionDoesNotExist]) size = 1).