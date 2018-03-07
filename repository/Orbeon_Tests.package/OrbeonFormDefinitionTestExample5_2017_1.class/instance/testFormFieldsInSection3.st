other
testFormFieldsInSection3
	| section1 grid43 |

	section1 := form sectionDefinitions at: 'section-53'.

	"fields of this section only and fields in grids of this section - does NOT includes subsections"
	self assert: (section1 getAllFieldDefinitions size = 4).

	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'nombreCertificador']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'cargoCertificador']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'control-45']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'control-46']).

	self assert: ((section1 getFieldNamed: 'nombreCertificador') type = 'xf:string').
	self assert: ((section1 getFieldNamed: 'cargoCertificador') type = 'xf:string').

	grid43 := section1 getGridDefinitionNamed: 'grid-43' ifNone: [self assert: false].

	self assert: ((grid43 getFieldNamed: 'control-45') type = 'xf:string').
	self assert: ((grid43 getFieldNamed: 'control-46') type = 'xf:positiveInteger').