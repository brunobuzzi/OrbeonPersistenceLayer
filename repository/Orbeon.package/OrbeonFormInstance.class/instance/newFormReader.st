other
newFormReader
	"Answer <anOrbeonFormReader> to get values from the XML document of the receiver"

	^(self defaultXFormReaderClass for: definition xmlString with: xmlString)
			orbeonFormInstance: self; "see issue #208"
			yourself