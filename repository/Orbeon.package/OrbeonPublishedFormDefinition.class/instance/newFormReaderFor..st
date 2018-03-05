process xml
newFormReaderFor: anOrbeonXmlPath
	"Answer <anOrbeonFormReader> to get values from the XML document of the receiver"

	^OrbeonXPathFormReader for: xmlString orbeonVersion: anOrbeonXmlPath