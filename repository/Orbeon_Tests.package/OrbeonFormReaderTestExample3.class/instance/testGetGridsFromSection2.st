definition tests
testGetGridsFromSection2
	| section2 section21 grids |

	section2 := reader formMainSections second.
	section21 := (reader formSubSectionsOf: section2) last.

	grids := reader formGridComponentsIn: section21.
	self assert: (grids size = 0).

	grids := reader formGridComponentsIn: section2.
	self assert: (grids size = 1).
	self assert: ((grids first attributeAt: 'id') = 'grid-19-grid').