test
testFieldsInMainSections
	"This test Exclude Subsections and fields in repeatable grids"
	| fields |

	fields := OrderedCollection new.
	reader formMainSections do: [:eachSection | (reader formFieldsIn: eachSection) do: [:eachField | fields add: (reader getNameFrom: eachField)]].

	self assert: ((#('data' 'dataType' 'name' 'phone' 'details' 'date' 'option') intersection: fields) size = 7)