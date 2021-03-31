orbeon sections
formGridFieldsIn: xmlGrid
	"The receiver get the fields of Orbeon Form Definition <xmlDefinition>, components inside -repeat element- are NOT listed.
	The forms field are defined in the XForms after:    
		<xh:body> <fr:view>  tags"
	| fields orbeonXPath |

	orbeonXPath := self dataFormatVersion.
	fields := OrderedCollection new.

	(xmlGrid xPath: orbeonXPath frFieldsInGridXpath) addAllTo: fields.
	(xmlGrid xPath: orbeonXPath usFieldsInGridXpath) addAllTo: fields.
	(xmlGrid xPath: orbeonXPath xfFieldsInGridXpath) addAllTo: fields.

	^fields