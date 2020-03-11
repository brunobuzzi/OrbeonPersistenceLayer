export
printFormSectionInstance: aFormSectionInstance
	"The receiver map the section instance <aFormSectionInstance> to <printArray>"

	aFormSectionInstance isRepeatable  "if repeatable then print all iterations in <printArray>"
	ifTrue: [^aFormSectionInstance iterationsDo: [:each | self printFormSectionInstance: each]].

	"initialize all Row Array"
	1 to: self numberOfFields do: [:each | printArray at: lineNumber put: (Array new: self numberOfFields)].

	(printArray at: lineNumber) at: 1 "id" put: aFormSectionInstance id.

	self printInstancesFieldsOf: aFormSectionInstance. "print top fields of <aFormSectionInstance>"

	self printInstancesGridsOf: aFormSectionInstance. "print top grids of <aFormSectionInstance>"

	"print subsections of <aFormSectionInstance>"
	^aFormSectionInstance getSectionsToExport do: [:each | self printFormSectionInstance: each].