get sections
getRepeatableSimpleSectionsWithGrids

	^sections select: [:each | each isRepeatableSimpleWithGrids]