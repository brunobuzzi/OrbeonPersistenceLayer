form-field-value
getFields
	"This method does NOT includes repeat values and repeat sections, for that see #getAllFields in this class
	The receiver answer a Dictionary with fields (including nested sections) where the key is the field name and the value is the field value."
	| allFields |

	allFields := Dictionary new.

	self getAllSections do: [:each | allFields addAll: each getFields].

	^allFields