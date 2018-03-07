definition tests
testGetFieldsOfGridsInSection2
	| section2 grids grid fields |

	section2 := reader formMainSections second.

	grids := reader formGridComponentsIn: section2.
	grid := grids first.
	fields := reader formGridFieldsIn: grid.

	self assert: (fields size = 2).
	self assert: (fields anySatisfy: [:e | (e attributeAt: 'id') = 'options-control']).
	self assert: (fields anySatisfy: [:e | (e attributeAt: 'id') = 'otherOptions-control']).