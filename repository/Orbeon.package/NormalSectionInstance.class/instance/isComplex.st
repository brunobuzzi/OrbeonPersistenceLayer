section type
isComplex
	"Answer whether the receiver has the following characteristics:
		* Is NOT a Repeatable Section
		* Has Sub Sections
		* Has NO Grids "

	^(self hasDefinedSubSections and: [self hasDefinedGrids not])
		and: [self anySubSectionHasGrids not]