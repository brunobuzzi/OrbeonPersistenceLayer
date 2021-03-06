tests
testFormFieldsInSection1
	| section1 |

	section1 := form getSectionNamed: 'section-1'.

	"fields of this section only and fields in grids of this section - does NOT includes subsections"
	self assert: (section1 getAllFieldDefinitions size = 5).

	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'name']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'surname']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'phone']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'mail']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'boolean']).

	self assert: ((section1 getFieldNamed: 'name') type = 'xf:string').
	self assert: ((section1 getFieldNamed: 'surname') type = 'xf:string').
	self assert: ((section1 getFieldNamed: 'phone') type = 'xf:string').
	self assert: ((section1 getFieldNamed: 'mail') type = 'xf:email').
	self assert: ((section1 getFieldNamed: 'boolean') type = 'xf:boolean').