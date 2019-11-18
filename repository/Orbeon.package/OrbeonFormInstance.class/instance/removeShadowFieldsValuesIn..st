upgrade definition
removeShadowFieldsValuesIn: anOrbeonPublishedFormDefinition
	"Remove <AppFieldValue> that are not present anymore in the receiver.
	This situation is because the receiver has changed/upgraded its definition and the new definition does not contain all previous fields.
	<AppFieldsValues> has to be removed from the old definition <anOrbeonPublishedFormDefinition>.
	See issue: #243"

	(self shadowFieldsValuesIn: anOrbeonPublishedFormDefinition) do: [:fieldValue | anOrbeonPublishedFormDefinition removeFieldInstance: fieldValue]