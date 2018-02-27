test
testSearchFields
	| summaryFields |

	summaryFields := OrderedCollection new.
	reader formMainSections do: [:eachSection | summaryFields addAll: (reader searchFormFieldsNameIn: eachSection)].

	self assert: ((#('data' 'dataType' 'name' 'phone' 'option') intersection: summaryFields) size = 5)