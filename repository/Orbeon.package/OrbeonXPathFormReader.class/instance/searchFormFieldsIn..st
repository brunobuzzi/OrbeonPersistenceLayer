orbeon sections
searchFormFieldsIn: xmlSection
	"The receiver answer a collection with the field definitions in Form Section <xmlSection> that are field search"

	^(xmlSection xPath: './/fr:grid/xh:tr/xh:td/*[contains(@class,''fr-search'')]') asOrderedCollection.