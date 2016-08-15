custom iteration name
getCustomIterationNameFor: sectionName

	^customSectionIterationNames at: sectionName ifAbsent: [nil]