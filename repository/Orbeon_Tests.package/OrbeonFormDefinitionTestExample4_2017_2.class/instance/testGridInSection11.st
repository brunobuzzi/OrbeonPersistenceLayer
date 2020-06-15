other
testGridInSection11
	| section1 section11 grid |

	section1 := form getSectionNamed: 'section-1'.
	section11 := section1 subSectionsLast.
	grid := section11 getGridDefinitionNamed: 'grid-10'.
	self assert: grid notNil.

	self assert: (grid fieldDefinitions size = 3).

	self assert: (grid fieldDefinitions anySatisfy: [:e | e name = 'moneySubject']).
	self assert: (grid fieldDefinitions anySatisfy: [:e | e name = 'quantity']).
	self assert: (grid fieldDefinitions anySatisfy: [:e | e name = 'currency']).

	self assert: ((grid fieldDefinitions detect: [:e | e name = 'moneySubject']) type = 'xf:string').
	self assert: ((grid fieldDefinitions detect: [:e | e name = 'quantity']) type = 'xf:decimal').
	self assert: ((grid fieldDefinitions detect: [:e | e name = 'currency']) type = 'xf:decimal').