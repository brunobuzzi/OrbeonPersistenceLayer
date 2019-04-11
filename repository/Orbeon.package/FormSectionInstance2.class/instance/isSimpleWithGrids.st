section type
isSimpleWithGrids
	"Answer whether the receiver has the following characteristics:
		* Is NOT a Repeatable Section
		* Has NO Sub Sections
		* Has Grids "

	^self hasDefinedSubSections not and: [self hasDefinedGrids]