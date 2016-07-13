section type
anySubSectionHasGrids
	"Answer whether or not the receiver or it's subsections has any Grid"

	^sectionIterations anySatisfy: [:each | each anySubSectionHasGrids]