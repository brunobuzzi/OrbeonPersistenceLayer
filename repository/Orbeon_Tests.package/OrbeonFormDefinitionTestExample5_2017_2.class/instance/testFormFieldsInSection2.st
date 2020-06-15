other
testFormFieldsInSection2
	| section1 |

	section1 := form getSectionNamed: 'section-41'.

	"fields of this section only and fields in grids of this section - does NOT includes subsections"
	self assert: (section1 getAllFieldDefinitions size = 5).

	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'nombreDirectivo']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'cargoDirectivo']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'direccionDirectivo']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'telefonoDirectivo']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'emailDirectivo']).

	self assert: ((section1 getFieldNamed: 'nombreDirectivo') type = 'xf:string').
	self assert: ((section1 getFieldNamed: 'cargoDirectivo') type = 'xf:string').
	self assert: ((section1 getFieldNamed: 'direccionDirectivo') type = 'xf:string').
	self assert: ((section1 getFieldNamed: 'telefonoDirectivo') type = 'xs:integer').
	self assert: ((section1 getFieldNamed: 'emailDirectivo') type = 'xf:email').