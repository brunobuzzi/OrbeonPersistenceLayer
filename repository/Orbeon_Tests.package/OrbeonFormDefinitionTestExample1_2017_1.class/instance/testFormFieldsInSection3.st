test
testFormFieldsInSection3
	| section subSection grid |

	section := form sectionDefinitions at: 'section-3'.
	self assert: section isRepeatable.
	"fields of this section only and fields in grids of this section - does NOT includes subsections"
	self assert: (section getAllFieldDefinitions size = 6).

	self assert: (section getAllFieldDefinitions anySatisfy: [:e | e name = 'details']).
	self assert: (section getAllFieldDefinitions anySatisfy: [:e | e name = 'date']).
	self assert: (section getAllFieldDefinitions anySatisfy: [:e | e name = 'option']).

	self assert: ((section getFieldNamed: 'details') type = 'xf:string').
	self assert: ((section getFieldNamed: 'date') type = 'xf:date').
	self assert: ((section getFieldNamed: 'option') type = 'xf:boolean').

	grid := section getGridDefinitionNamed: 'grid-4'. 
	subSection := section subSectionsLast.

	self assert: (subSection  name = 'section-4').
	self assert: (grid name = 'grid-4').
	
	self assert: (grid fieldDefinitions size = 3).

	self assert: (grid fieldDefinitions anySatisfy: [:e | e name = 'control-1']).
	self assert: (grid fieldDefinitions anySatisfy: [:e | e name = 'time']).
	self assert: (grid fieldDefinitions anySatisfy: [:e | e name = 'checkOptions']).

	self assert: ((grid getFieldNamed: 'control-1') type = 'xf:decimal').
	self assert: ((grid getFieldNamed: 'time') type = 'xf:time').
	self assert: ((grid getFieldNamed: 'checkOptions') type = 'xf:string').

	self assert: (subSection getAllFieldDefinitions size = 2).

	self assert: (subSection getAllFieldDefinitions anySatisfy: [:e | e name = 'radio-buttons']).
	self assert: (subSection getAllFieldDefinitions anySatisfy: [:e | e name = 'date2']).

	self assert: ((subSection getFieldNamed: 'radio-buttons') type = 'xf:string').
	self assert: ((subSection getFieldNamed: 'date2') type = 'xf:date').