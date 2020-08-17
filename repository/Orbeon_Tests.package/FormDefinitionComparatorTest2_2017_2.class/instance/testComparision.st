other
testComparision
	| comparator |

	comparator := formOne compareWith: formTwo.

	self assert: (comparator differencesSize = 9).

	self assert: ((comparator differencesSelect: [:each | each isFieldTypeChanged]) size = 2).

	self assert: ((comparator differencesSelect: [:each | each isFieldDoesNotExist]) size = 6).

	self assert: ((comparator differencesSelect: [:each | each isSectionDoesNotExist]) size = 1).