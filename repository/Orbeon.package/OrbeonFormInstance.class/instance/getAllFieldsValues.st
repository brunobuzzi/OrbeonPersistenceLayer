other
getAllFieldsValues
	"Answer <aSet> with all <AppFieldValue> of all fields"
	| allFieldsValues |

	allFieldsValues := Set new.
	fieldsValues do: [:valueHolder | allFieldsValues addAll: valueHolder currentValues].

	^allFieldsValues