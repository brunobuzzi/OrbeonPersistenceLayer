form-field-value
multipleFieldValuesAt: fieldName
	"Answer <aCollection> with converted values (a Smalltalk object) for the field named <fieldName>"
	"This is used form repeatable fields"
	| valueHolder |

	valueHolder := fieldsValues at: fieldName ifAbsent: [^nil].

	valueHolder currentValues ifEmpty: [^nil].

	^(valueHolder currentValues collect: [:each | each value]) asOrderedCollection