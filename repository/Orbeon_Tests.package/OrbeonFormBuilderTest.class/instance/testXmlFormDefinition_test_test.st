tests
testXmlFormDefinition_test_test
	| fields types grids summaryFields subSection |

	builder := testRoot newFormBuilderFor: self newDefinitionTemplate formDefinition_test_test.

"Availability"
	self assert: builder isAvailable.
	[builder setAvailableNodeValueWith: '1212'] on: OrbeonInvalidXMLException do: [:ex | self assert: true].
	builder setAvailableNodeValueWith: 'true'.
	self assert: builder isAvailable.
	builder setAvailableNodeValueWith: 'false'.
	self deny: builder isAvailable.
	
"FieldsInDocument"
	fields := OrderedCollection new.
	(builder getAllFormFieldsIn: builder xmlDocument) do: [:eachField | fields add: (builder getNameFrom: eachField)].
	self assert: ((#('data' 'dataType' 'name' 'phone' 'details' 'date' 'option' 'control-1' 'time' 'checkOptions' 'radio-buttons' 'date2' '') intersection: fields) size = 12).

"FieldsInMainSections"
	fields := OrderedCollection new.
	builder formMainSections do: [:eachSection | (builder formFieldsIn: eachSection) do: [:eachField | fields add: (builder getNameFrom: eachField)]].
	self assert: ((#('data' 'dataType' 'name' 'phone' 'details' 'date' 'option') intersection: fields) size = 7).

"FieldsTypes"
	types := builder getFieldTypes.
	self assert: ((types at: 'data' ifAbsent: [self assert: false]) = 'xf:string').
	self assert: ((types at: 'dataType' ifAbsent: [self assert: false]) = 'xf:string').
	self assert: ((types at: 'name' ifAbsent: [self assert: false]) = 'xf:string').
	self assert: ((types at: 'phone' ifAbsent: [self assert: false]) = 'xf:integer').
	self assert: ((types at: 'details' ifAbsent: [self assert: false]) = 'xf:string').
	self assert: ((types at: 'date' ifAbsent: [self assert: false]) = 'xf:date').
	self assert: ((types at: 'option' ifAbsent: [self assert: false]) = 'xf:boolean').
	self assert: ((types at: 'control-1' ifAbsent: [self assert: false]) = 'xf:decimal').
	self assert: ((types at: 'time' ifAbsent: [self assert: false]) = 'xf:time').
	self assert: ((types at: 'checkOptions' ifAbsent: [self assert: false]) = 'xf:string').
	self assert: ((types at: 'radio-buttons' ifAbsent: [self assert: false]) = 'xf:string').
	self assert: ((types at: 'date2' ifAbsent: [self assert: false]) = 'xf:date').

"RepeatableGridsInMainSections"
	grids := OrderedCollection new.
	builder formMainSections do: [:eachSection | (builder formGridComponentsIn: eachSection) do: [:eachGrid | grids add: eachGrid]].
	self assert: (grids size = 1).
	self assert: (((grids at: 1) attributeAt: 'id') = 'grid-4-grid').

"SearchFields"
	summaryFields := OrderedCollection new.
	builder formMainSections do: [:eachSection | summaryFields addAll: (builder searchFormFieldsNameIn: eachSection)].
	self assert: ((#('data' 'dataType' 'name' 'phone' 'option') intersection: summaryFields) size = 5).

"SubSections"
	subSection := OrderedCollection new.
	builder formMainSections do: [:eachSection | (builder formSubSectionsOf: eachSection) do: [:eachSubSec | subSection add: eachSubSec]].
	self assert: (subSection size = 1).
	self assert: (((subSection at: 1) attributeAt: 'id') = 'section-4-section').

"SummaryFields"
	summaryFields := OrderedCollection new.
	builder formMainSections do: [:eachSection | summaryFields addAll: (builder summaryFormFieldsNameIn: eachSection)].
	self assert: ((#('data' 'dataType' 'name' 'phone' 'option') intersection: summaryFields) size = 5)