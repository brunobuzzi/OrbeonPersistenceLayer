section type
isRepeatableSimple
	"Answer whether the receiver has the following characteristics:
		* Is a Repeatable Section
		* Has NO Sub Sections
		* Has NO Grids "

	^self hasDefinedSubSections not and: [self hasDefinedGrids not]