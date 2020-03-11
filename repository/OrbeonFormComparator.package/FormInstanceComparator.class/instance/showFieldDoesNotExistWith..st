other
showFieldDoesNotExistWith: aDictionary
	"The receiver answer a collection of difference with <aDictionary> of type <FieldDoesNotExist>"

	^(self compareWith: aDictionary) select: [:each | each class == FieldDoesNotExist]