upgrade definition
removeLostFieldsValues
	"Answer <aCollection> of field instances <AppFieldValue> that has been removed from <anOrbeonPublishedFormDefinition>.
	The receiver has changed/upgraded its definition <anOrbeonPublishedFormDefinition> to a new definition that does not contain all previous fields.
	See issue: #243"
	| currentFieldKeys removedFields |

	removedFields := Set new.
	currentFieldKeys := self getAllFields keys.
	(fieldsValues keys reject: [:fieldName | currentFieldKeys includes: fieldName]) do: [:fieldName | | valueHolder |
		valueHolder := fieldsValues removeKey: fieldName.
		removedFields addAll: valueHolder currentValues.
	].

	^removedFields