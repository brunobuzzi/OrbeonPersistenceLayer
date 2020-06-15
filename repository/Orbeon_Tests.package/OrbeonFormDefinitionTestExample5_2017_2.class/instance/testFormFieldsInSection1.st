other
testFormFieldsInSection1
	| section1 |

	section1 := form getSectionNamed: 'Datos-generales'.

	"fields of this section only and fields in grids of this section - does NOT includes subsections"
	self assert: (section1 getAllFieldDefinitions size = 8).

	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'nombre']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'empleados']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'ventasAnuales']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'rut']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'control-52']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'certificado_pyme']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'ciiu2']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'pyme']).

	self assert: ((section1 getFieldNamed: 'nombre') type = 'xf:string').
	self assert: ((section1 getFieldNamed: 'empleados') type = 'xf:string').
	self assert: ((section1 getFieldNamed: 'ventasAnuales') type = 'xf:string').
	self assert: ((section1 getFieldNamed: 'rut') type = 'xs:integer').
	self assert: ((section1 getFieldNamed: 'control-52') type = 'xf:string').
	self assert: ((section1 getFieldNamed: 'certificado_pyme') type = 'xs:anyURI').
	self assert: ((section1 getFieldNamed: 'ciiu2') type = 'xf:string').
	self assert: ((section1 getFieldNamed: 'pyme') type = 'xf:string').