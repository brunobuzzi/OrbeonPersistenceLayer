get sections
getRepeatableSimpleSectionsWithGrids

	^subSections select: [:each | each isRepeatableSimpleWithGrids]