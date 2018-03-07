definition tests
testGetSearchFields
	| section1 searchFields |

	section1 := reader formMainSections first.
	searchFields := reader searchFormFieldsIn: section1.

	self assert: (searchFields size = 3).
	self assert: (searchFields anySatisfy: [:e | (e attributeAt: 'id') = 'name-control']).
	self assert: (searchFields anySatisfy: [:e | (e attributeAt: 'id') = 'surname-control']).
	self assert: (searchFields anySatisfy: [:e | (e attributeAt: 'id') = 'phone-control']).