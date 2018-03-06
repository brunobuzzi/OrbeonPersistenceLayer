other
testComparision
	| differences |

	differences := (formOne compareWith: formTwo) comparisionResult.

	self assert: (differences size = 6).

	self assert: ((differences select: [:each | each isFieldTypeChanged]) size = 1).

	self assert: ((differences select: [:each | each isFieldDoesNotExist]) size = 4).

	self assert: ((differences select: [:each | each isSectionDoesNotExist]) size = 1).