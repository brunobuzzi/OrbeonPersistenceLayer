orbeon sections
getAllFormFieldsIn: xmlNode
	"The receiver get the fields of Orbeon Form Definition <xmlDefinition>.
	The forms field are defined in the XForms after:    
		<xh:body> <fr:view>  tags"
	| fields |

	fields := OrderedCollection new.
	(xmlNode xPath: orbeonXPath frFieldsInDocumentXpath) addAllTo: fields.
	(xmlNode xPath: orbeonXPath usFieldsInDocumentXpath) addAllTo: fields.
	(xmlNode xPath: orbeonXPath xfFieldsInDocumentXpath) addAllTo: fields.

	^fields