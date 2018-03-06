other
testComparision
	| differences |

	differences := (formOne compareWith: formTwo) comparisionResult.

	self assert: (differences size = 3).

	self assert: ((differences select: [:each | each isFieldDoesNotExist]) size = 2).

	self assert: ((differences select: [:each | each isGridDoesNotExist]) size = 1).