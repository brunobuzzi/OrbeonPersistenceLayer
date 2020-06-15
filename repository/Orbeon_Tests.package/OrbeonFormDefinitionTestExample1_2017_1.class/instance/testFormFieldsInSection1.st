test
testFormFieldsInSection1
	| section1 |

	section1 := form getSectionNamed: 'section-1'.

	"fields of this section only and fields in grids of this section - does NOT includes subsections"
	self assert: (section1 getAllFieldDefinitions size = 2).

	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'data']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'dataType']).

	self assert: ((section1 getFieldNamed: 'data') type = 'xf:string').
	self assert: ((section1 getFieldNamed: 'dataType') type = 'xf:string').