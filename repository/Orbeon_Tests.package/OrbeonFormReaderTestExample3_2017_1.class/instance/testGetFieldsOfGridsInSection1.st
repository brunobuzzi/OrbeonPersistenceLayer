definition tests
testGetFieldsOfGridsInSection1
	| section1 section11 grids grid fields |

	section1 := reader formMainSections first.
	section11 := (reader formSubSectionsOf: section1) last.

	grids := reader formGridComponentsIn: section11.
	grid := grids first.
	fields := reader formGridFieldsIn: grid.

	self assert: (fields size = 3).
	self assert: (fields anySatisfy: [:e | (e attributeAt: 'id') = 'moneySubject-control']).
	self assert: (fields anySatisfy: [:e | (e attributeAt: 'id') = 'quantity-control']).
	self assert: (fields anySatisfy: [:e | (e attributeAt: 'id') = 'currency-control']).