test
testSummaryFields
	| summaryFields |

	summaryFields := OrderedCollection new.
	reader formMainSections do: [:eachSection | summaryFields addAll: (reader summaryFormFieldsNameIn: eachSection)].

	self assert: ((#('data' 'dataType' 'name' 'phone' 'option') intersection: summaryFields) size = 5)