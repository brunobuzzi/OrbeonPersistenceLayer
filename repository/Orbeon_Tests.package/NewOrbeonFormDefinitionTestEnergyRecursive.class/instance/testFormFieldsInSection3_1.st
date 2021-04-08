tests
testFormFieldsInSection3_1
	| section1 subSection grid50 |

	section1 := form getSectionNamed: 'section-53'.

	subSection := section1 getSubSectionNamed: 'section-47' ifNone: [self assert: false].
	"fields of this section only and fields in grids of this section - does NOT includes subsections"
	self assert: (subSection getAllFieldDefinitions size = 2).

	self assert: (subSection getAllFieldDefinitions anySatisfy: [:e | e name = 'universidad']).
	self assert: (subSection getAllFieldDefinitions anySatisfy: [:e | e name = 'curso']).

	self assert: ((subSection getFieldNamed: 'universidad') type = 'xf:string').

	grid50 := subSection getGridDefinitionNamed: 'grid-50' ifNone: [self assert: false].

	self assert: ((grid50 getFieldNamed: 'curso') type = 'xf:string').