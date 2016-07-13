type-mapping
mapOrbeonType: typeString
	"The receiver map the Orbeon type string <typeString> to a GemStone class subclass of <FormFieldValue>"

	^self class mapDictionary at: typeString ifAbsent: [AppFieldStringValue]