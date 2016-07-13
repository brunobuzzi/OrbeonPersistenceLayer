export
printInfoForGrid: aFormGridInstance

	(printArray at: lineNumber) at: 2 "info" put: self currentInfo, '-', aFormGridInstance sectionName, '-',aFormGridInstance name.