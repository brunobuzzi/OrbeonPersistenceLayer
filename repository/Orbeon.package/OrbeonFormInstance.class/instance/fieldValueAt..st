form-field-value
fieldValueAt: fieldName
	"Answer the converted value (a Smalltalk object) for the field named <fieldName>.
	If it is a non repeatable field then answer the value of the field if it is a repeatable field then answer aCollection of values "
	| valueHolder |

	valueHolder := fieldsValues at: fieldName ifAbsent: [^nil].

	valueHolder currentValues ifEmpty: [^nil].

	(valueHolder currentValues size = 1) ifTrue: [^valueHolder currentValues last value]. "this is a NON repeatable field"

	^(valueHolder currentValues collect: [:each | each value]) asOrderedCollection "this is a repeatable field"