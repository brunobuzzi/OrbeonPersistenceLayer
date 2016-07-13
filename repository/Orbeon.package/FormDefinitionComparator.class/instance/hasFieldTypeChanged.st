other
hasFieldTypeChanged
	"Answer whether or not at least on field definition has changed it's type"

	^comparisionResult anySatisfy: [:each | each isFieldTypeChanged]