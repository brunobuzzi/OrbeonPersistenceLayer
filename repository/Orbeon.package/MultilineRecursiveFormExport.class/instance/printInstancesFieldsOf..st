export
printInstancesFieldsOf: aFormSectionInstance
	"The receiver print the top fields of <aFormSectionInstance> in <printArray>"

	self printInfoForFormFieldsOf: aFormSectionInstance. "put info of the section <aFormSectionInstance> in the second column"
	
	aFormSectionInstance fields keysAndValuesDo: [:fieldName :fieldValue |
		
		self insert: fieldName value: fieldValue. "for each field insert in <printArray> field name and value"
	].

	(aFormSectionInstance fields notEmpty) ifTrue: [lineNumber := lineNumber + 1.]. "new row if the fields where not empty"