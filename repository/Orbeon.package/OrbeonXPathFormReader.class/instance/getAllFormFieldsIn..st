orbeon sections
getAllFormFieldsIn: xmlNode
	"The receiver get the fields of Orbeon Form Definition <xmlDefinition>.
	The forms field are defined in the XForms after:    
		<xh:body> <fr:view>  tags"
	| fields |

	fields := OrderedCollection new.
	(xmlNode xPath: './/fr:grid/xh:tr/xh:td/*[starts-with(name(), ''fr:'')]') addAllTo: fields.
	(xmlNode xPath: './/fr:grid/xh:tr/xh:td/*[starts-with(name(), ''us:'')]') addAllTo: fields.
	(xmlNode xPath: './/fr:grid/xh:tr/xh:td/*[starts-with(name(), ''xf:'')]') addAllTo: fields.

	^fields