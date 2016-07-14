other
testFormFieldsInSection2
	| section2 |

	section2 := form sectionDefinitions at: 'section-14'.

	"fields of this section only and fields in grids of this section - does NOT includes subsections"
	self assert: (section2 getAllFieldDefinitions size = 8).

	self assert: (section2 getAllFieldDefinitions anySatisfy: [:e | e name = 'date1']).
	self assert: (section2 getAllFieldDefinitions anySatisfy: [:e | e name = 'dateTime']).
	self assert: (section2 getAllFieldDefinitions anySatisfy: [:e | e name = 'date2']).
	self assert: (section2 getAllFieldDefinitions anySatisfy: [:e | e name = 'date3']).
	self assert: (section2 getAllFieldDefinitions anySatisfy: [:e | e name = 'details']).
	self assert: (section2 getAllFieldDefinitions anySatisfy: [:e | e name = 'type']).
	self assert: (section2 getAllFieldDefinitions anySatisfy: [:e | e name = 'options']).
	self assert: (section2 getAllFieldDefinitions anySatisfy: [:e | e name = 'otherOptions']).

	self assert: ((section2 getFieldNamed: 'date1') type = 'xf:date').
	self assert: ((section2 getFieldNamed: 'dateTime') type = 'xf:dateTime').
	self assert: ((section2 getFieldNamed: 'date2') type = 'xf:date').
	self assert: ((section2 getFieldNamed: 'date3') type = 'xf:date').
	self assert: ((section2 getFieldNamed: 'details') type = 'xf:string').
	self assert: ((section2 getFieldNamed: 'type') type = 'xf:string').
	"for these two field #getFieldNamed: answer nil because is defined inside a grid and not directly in the section"
	self assert: ((section2 getAllFieldDefinitions detect: [:e | e name = 'options']) type = 'xf:string').
	self assert: ((section2 getAllFieldDefinitions detect: [:e | e name = 'otherOptions']) type = 'xf:string').