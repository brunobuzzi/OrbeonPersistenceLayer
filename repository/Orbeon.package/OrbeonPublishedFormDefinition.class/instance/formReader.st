process xml
formReader
	"Answer <anOrbeonFormReader> to get values from the XML document of the receiver"

	"^OrbeonFormReader for: xmlString."

	^self defaultXFormReaderClass for: xmlString.