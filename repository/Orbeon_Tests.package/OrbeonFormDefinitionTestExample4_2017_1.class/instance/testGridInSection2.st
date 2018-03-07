other
testGridInSection2
	| section2 grid |

	section2 := form sectionDefinitions at: 'section-14'.
	grid := section2 getGridDefinitionNamed: 'grid-19'.

	self assert: grid notNil.

	self assert: (grid fieldDefinitions size = 2).

	self assert: (grid fieldDefinitions anySatisfy: [:e | e name = 'options']).
	self assert: (grid fieldDefinitions anySatisfy: [:e | e name = 'otherOptions']).

	self assert: ((grid fieldDefinitions detect: [:e | e name = 'options']) type = 'xf:string').
	self assert: ((grid fieldDefinitions detect: [:e | e name = 'otherOptions']) type = 'xf:string').