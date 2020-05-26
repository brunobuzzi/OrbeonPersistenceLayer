other
getFormFieldList

	(chartDefinition isFieldEvolution or: [chartDefinition isFieldEvolutionComparison]) 
	ifTrue: [^(#(''), selectedDefinition getNumericFieldsNames) asSortedCollection].
	
	^(#(''), selectedDefinition getFieldsNames) asSortedCollection