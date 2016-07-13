form-field-value
valueAt: fieldName
	"The receiver answer the value of the field named <fieldName> if none answer nil.
	The value is the original string value in the XML"
	| value |

	self getAllSections do: [:each | value := each valueAt: fieldName.
		value ifNotNil: [^value]].

	^nil