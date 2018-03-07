definition tests
testGetGridsFromSection1
	| section1 section11 grids |

	section1 := reader formMainSections first.
	section11 := (reader formSubSectionsOf: section1) last.

	grids := reader formGridComponentsIn: section1.
	self assert: (grids size = 0).

	grids := reader formGridComponentsIn: section11.
	self assert: (grids size = 1).
	self assert: ((grids first attributeAt: 'id') = 'grid-10-grid').