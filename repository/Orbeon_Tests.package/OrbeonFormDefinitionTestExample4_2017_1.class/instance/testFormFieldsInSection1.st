other
testFormFieldsInSection1
	| section1 |

	section1 := form sectionDefinitions at: 'section-1'.

	"fields of this section only and fields in grids of this section - does NOT includes subsections"
	self assert: (section1 getAllFieldDefinitions size = 4).

	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'name']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'surname']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'phone']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'mail']).

	self assert: ((section1 getFieldNamed: 'name') type = 'xf:string').
	self assert: ((section1 getFieldNamed: 'surname') type = 'xf:string').
	self assert: ((section1 getFieldNamed: 'phone') type = 'xf:string').
	self assert: ((section1 getFieldNamed: 'mail') type = 'xf:email').