upgrade definition
shadowFieldsValuesIn: anOrbeonPublishedFormDefinition
	"Answer <aCollection> of field instances <AppFieldValue> that has been removed from <anOrbeonPublishedFormDefinition>.
	The receiver has changed/upgraded its definition <anOrbeonPublishedFormDefinition> to a new definition that does not contain all previous fields.
	See issue: #243"
	| currentFieldKeys shadowsFields |

	shadowsFields := Set new.
	currentFieldKeys := self getAllFields keys.
	(fieldsValues keys reject: [:fieldName | currentFieldKeys includesKey: fieldName]) do: [:fieldName | | valueHolder |
		valueHolder := fieldsValues at: fieldName.
		shadowsFields addAll: valueHolder currentValues.
	].

	^shadowsFields