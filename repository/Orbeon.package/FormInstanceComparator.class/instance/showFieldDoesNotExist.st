other
showFieldDoesNotExist
	"The receiver answer a collection of difference of type <FieldDoesNotExist>"

	^comparisionResult select: [:each | each class == FieldDoesNotExist]