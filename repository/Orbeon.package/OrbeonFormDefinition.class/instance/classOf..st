type-mapping
classOf: attributeName
	"Answer a subclass of <AppFieldValue> that represent the Orbeon type of the field named <attributeName>."

	^self mapOrbeonType: 
			(self typeOf: attributeName) "#typeOf: answer <aString> like 'xf:string' - 'xs:integer' - ... "