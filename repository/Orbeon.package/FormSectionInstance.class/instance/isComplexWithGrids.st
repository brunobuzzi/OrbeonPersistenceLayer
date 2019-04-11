section type
isComplexWithGrids
	"Answer whether the receiver has the following characteristics:
		* Is NOT a Repeatable Section
		* Has Sub Sections
		* Has Grids "

	^self hasDefinedSubSections and: [(self hasDefinedGrids) or: [self anySubSectionHasGrids]]