test
testFormFieldsInSection2
	| section1 |

	section1 := form getSectionNamed: 'section-2'.

	"fields of this section only and fields in grids of this section - does NOT includes subsections"
	self assert: (section1 getAllFieldDefinitions size = 2).

	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'name']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'phone']).

	self assert: ((section1 getFieldNamed: 'name') type = 'xf:string').
	self assert: ((section1 getFieldNamed: 'phone') type = 'xf:integer').