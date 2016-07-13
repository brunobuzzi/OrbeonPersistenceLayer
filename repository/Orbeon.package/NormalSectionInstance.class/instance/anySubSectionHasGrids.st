section type
anySubSectionHasGrids
	"Answer whether or not the receiver or it's subsections has any Grid"

	^subSections anySatisfy: [:each | each hasDefinedGrids or:[each anySubSectionHasGrids]]