section type
isRepeatableComplex
	"Answer whether the receiver has the following characteristics:
		* Is a Repeatable Section
		* Has Sub Sections
		* Has NO Grids "

	^(self hasDefinedSubSections and: [self hasDefinedGrids not])
		and: [self anySubSectionHasGrids not]