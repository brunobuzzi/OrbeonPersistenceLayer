orbeon sections
summaryFormFieldsIn: xmlSection
	"The receiver get the fields of Orbeon Form Definition <xmlDefinition>, components inside -repeat element- are NOT listed "
	
	^(self getAllFormFieldsIn: xmlSection) select: [:each | ((each attributeAt: 'class') findString:  'fr-summary' startingAt: 1) ~= 0]