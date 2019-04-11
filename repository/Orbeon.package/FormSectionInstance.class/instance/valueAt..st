other
valueAt: fieldName 
	"Answer the string/original value in XML for the field named <fieldName>"

	^fields at: fieldName ifAbsent: nil