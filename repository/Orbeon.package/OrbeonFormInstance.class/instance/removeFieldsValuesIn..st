upgrade definition
removeFieldsValuesIn: anOrbeonPublishedFormDefinition
	"The receiver remove all <AppFieldValue> from the old definition <anOrbeonPublishedFormDefinition>
	See issue: #243"

	fieldsValues keysAndValuesDo: [:fieldName :valueHolder |  
		valueHolder currentValues do: [:fieldValue | anOrbeonPublishedFormDefinition removeFieldInstance: fieldValue].
	].

	self removeLostFieldsValues.