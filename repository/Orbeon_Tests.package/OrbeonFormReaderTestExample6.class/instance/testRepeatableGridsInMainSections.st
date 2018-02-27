test
testRepeatableGridsInMainSections
	| grids |

	grids := OrderedCollection new.
	reader formMainSections do: [:eachSection | (reader formGridComponentsIn: eachSection) do: [:eachGrid | grids add: eachGrid]].

	self assert: (grids size = 1).

	self assert: (((grids at: 1) attributeAt: 'id') = 'grid-4-grid').