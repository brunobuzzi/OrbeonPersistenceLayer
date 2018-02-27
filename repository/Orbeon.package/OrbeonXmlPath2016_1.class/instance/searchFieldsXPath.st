other
searchFieldsXPath
	"Answer the XPath to get XML nodes that are the Search Fields of the Form"

	^'.//fr:grid/xh:tr/xh:td/*[contains(@class,''fr-search'')]'