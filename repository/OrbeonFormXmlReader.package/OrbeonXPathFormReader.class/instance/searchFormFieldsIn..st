orbeon sections
searchFormFieldsIn: xmlSection
	"The receiver answer a collection with the field definitions in Form Section <xmlSection> that are field search"

	^(xmlSection xPath: orbeonXPath searchFieldsXPath) asOrderedCollection.