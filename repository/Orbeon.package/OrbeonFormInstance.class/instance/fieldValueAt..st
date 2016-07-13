form-field-value
fieldValueAt: fieldName
	"Answer the converted value (a Smalltalk object) for the field named <fieldName>"
	| valueHolder appFieldValue |

	valueHolder := fieldsValues at: fieldName ifAbsent: [^nil].

	valueHolder currentValues ifEmpty: [^nil].

	appFieldValue := valueHolder currentValues last.

	^appFieldValue value