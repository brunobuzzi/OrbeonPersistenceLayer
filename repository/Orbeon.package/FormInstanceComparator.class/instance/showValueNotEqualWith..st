other
showValueNotEqualWith: aDictionary

	^(self compareWith: aDictionary) select: [:each | each class == FieldValueNotEqual]