definition tests
testGetSummaryFields
	| section1 summaryFields |

	section1 := reader formMainSections first.
	summaryFields := reader summaryFormFieldsIn: section1.

	self assert: (summaryFields size = 3).
	self assert: (summaryFields anySatisfy: [:e | (e attributeAt: 'id') = 'name-control']).
	self assert: (summaryFields anySatisfy: [:e | (e attributeAt: 'id') = 'surname-control']).
	self assert: (summaryFields anySatisfy: [:e | (e attributeAt: 'id') = 'phone-control']).