type-mapping
typeOf: attributeName
	"Answer the type <aString> of the field named <attributeName> if field name is absent answer nil.
	<aString> is like: 'xs:string' - 'xs:integer - ''xs:boolean' - ...  "

	^fieldsType at: attributeName ifAbsent: [nil]