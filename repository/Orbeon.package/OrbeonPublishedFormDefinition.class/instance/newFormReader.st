other
newFormReader
	"Answer <anOrbeonFormReader> to get values from the XML document of the receiver"

	"^OrbeonFormReader for: xmlString."

	^OrbeonXPathFormReader for: xmlString.