other
testGridInSection2
	| section2 grid |

	section2 := form getSectionNamed: 'section-14'.
	grid := section2 getGridDefinitionNamed: 'grid-19'.

	self assert: grid notNil.

	self assert: (grid fieldDefinitionsSize = 2).

	self assert: (grid fieldDefinitionsAnySatisfy: [:e | e name = 'options']).
	self assert: (grid fieldDefinitionsAnySatisfy: [:e | e name = 'otherOptions']).

	self assert: ((grid fieldDefinitionsDetect: [:e | e name = 'options']) type = 'xf:string').
	self assert: ((grid fieldDefinitionsDetect: [:e | e name = 'otherOptions']) type = 'xf:string').