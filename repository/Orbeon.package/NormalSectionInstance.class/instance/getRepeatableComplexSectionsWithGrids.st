get sections
getRepeatableComplexSectionsWithGrids

	^subSections select: [:each | each isRepeatableComplexWithGrids]