orbeon sections
searchFormFieldsIn: xmlSection
	"The receiver answer a collection with the field definitions in Form Section <xmlSection> that are field search"

	^(self getAllFormFieldsIn: xmlSection) select: [:each | ((each attributeAt: 'class') findString: 'fr-search' startingAt: 1) ~= 0]