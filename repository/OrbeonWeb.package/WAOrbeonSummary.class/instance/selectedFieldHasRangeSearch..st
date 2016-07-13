other
selectedFieldHasRangeSearch: fieldName

	selectedDefinition ifNil: [^true].

	^selectedDefinition hasRangeSearch: fieldName.