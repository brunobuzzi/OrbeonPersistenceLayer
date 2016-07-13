get sections
getSectionsToExport

	^self getSimpleSections,
		self getSimpleSectionsWithGrids,
		self getComplexSections,
		self getComplexSectionsWithGrids,
		self getRepeatableSimpleSections,
		self getRepeatableSimpleSectionsWithGrids,
		self getRepeatableComplexSections,
		self getRepeatableComplexSectionsWithGrids