orbeon sections
formGridFieldsIn: xmlGrid
	"The receiver get the fields of Orbeon Form Definition <xmlDefinition>, components inside -repeat element- are NOT listed.
	The forms field are defined in the XForms after:    
		<xh:body> <fr:view>  tags"
	| fields |

	fields := OrderedCollection new.

	(xmlGrid xPath: 'xh:tr/xh:td/*[starts-with(name(), ''fr:'')]') addAllTo: fields.
	(xmlGrid xPath: 'xh:tr/xh:td/*[starts-with(name(), ''us:'')]') addAllTo: fields.
	(xmlGrid xPath: 'xh:tr/xh:td/*[starts-with(name(), ''xf:'')]') addAllTo: fields.

	^fields