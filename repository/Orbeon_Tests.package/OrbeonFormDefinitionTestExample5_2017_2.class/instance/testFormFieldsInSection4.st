other
testFormFieldsInSection4
	| section1 grid83 |

	section1 := form getSectionNamed: 'section-81'.

	"fields of this section only and fields in grids of this section - does NOT includes subsections"
	self assert: (section1 getAllFieldDefinitions size = 16).

	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'denominacionLocal']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'direccion']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'ciudad']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'dpto']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'tipoConsumidor']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'consumoEnergiaElectrica']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'combustible']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'aserrin']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'bagazo']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'biodiesel']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'bioetanol']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'carbon_mineral']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'control-72']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'nombreMedida']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'usoPrincipal']).
	self assert: (section1 getAllFieldDefinitions anySatisfy: [:e | e name = 'energetico_evitado']).

	self assert: ((section1 getFieldNamed: 'denominacionLocal') type = 'xf:string').
	self assert: ((section1 getFieldNamed: 'direccion') type = 'xf:string').
	self assert: ((section1 getFieldNamed: 'ciudad') type = 'xf:string').
	self assert: ((section1 getFieldNamed: 'dpto') type = 'xf:string').
	self assert: ((section1 getFieldNamed: 'tipoConsumidor') type = 'xf:string').
	self assert: ((section1 getFieldNamed: 'consumoEnergiaElectrica') type = 'xs:integer').
	self assert: ((section1 getFieldNamed: 'combustible') type = 'xf:string').
	self assert: ((section1 getFieldNamed: 'aserrin') type = 'xs:decimal').
	self assert: ((section1 getFieldNamed: 'bagazo') type = 'xs:decimal').
	self assert: ((section1 getFieldNamed: 'biodiesel') type = 'xs:decimal').
	self assert: ((section1 getFieldNamed: 'bioetanol') type = 'xs:decimal').
	self assert: ((section1 getFieldNamed: 'carbon_mineral') type = 'xs:decimal').
	self assert: ((section1 getFieldNamed: 'control-72') type = 'xf:string').

	grid83 := section1 getGridDefinitionNamed: 'grid-83' ifNone: [self assert: false].

	self assert: ((grid83 getFieldNamed: 'nombreMedida') type = 'xf:string').
	self assert: ((grid83 getFieldNamed: 'usoPrincipal') type = 'xf:string').
	self assert: ((grid83 getFieldNamed: 'energetico_evitado') type = 'xf:string').