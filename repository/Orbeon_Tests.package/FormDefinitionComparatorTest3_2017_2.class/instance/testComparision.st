other
testComparision
	| comparator |

	comparator	:= formOne compareWith: formTwo.

	self assert: (comparator differencesSize = 3).

	self assert: ((comparator differencesSelect: [:each | each isFieldDoesNotExist]) size = 2).

	self assert: ((comparator differencesSelect: [:each | each isGridDoesNotExist]) size = 1).