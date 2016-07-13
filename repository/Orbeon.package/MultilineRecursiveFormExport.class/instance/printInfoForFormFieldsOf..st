export
printInfoForFormFieldsOf: aFormSectionInstance

	(printArray at: lineNumber) at: 2 "info" put: self currentInfo, '-', aFormSectionInstance name, '-', aFormSectionInstance printExportType.