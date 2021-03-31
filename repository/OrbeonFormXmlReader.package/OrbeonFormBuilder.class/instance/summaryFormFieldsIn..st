orbeon sections
summaryFormFieldsIn: xmlSection
	"The receiver get the fields of Orbeon Form Definition <xmlDefinition>, components inside -repeat element- are NOT listed "

	^(xmlSection xPath: self dataFormatVersion summaryFieldsXPath) asOrderedCollection.