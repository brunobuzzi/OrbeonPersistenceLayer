other
newFormBuilder
	"Answer <anOrbeonFormReader> to get values from the XML document of the receiver"

	^(self systemRoot newFormBuilderFor: definition xmlString with: xmlString)
			orbeonFormInstance: self; "see issue #208"
			yourself