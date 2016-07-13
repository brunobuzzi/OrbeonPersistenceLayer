get sections
getRepeatableComplexSectionsWithGrids

	^sections select: [:each | each isRepeatableComplexWithGrids]