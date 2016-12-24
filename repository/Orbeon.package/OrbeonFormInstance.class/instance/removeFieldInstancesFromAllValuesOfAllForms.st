form-field-value
removeFieldInstancesFromAllValuesOfAllForms
	"This remove all <AppFieldValue> of the receiver from definition's <OrbeonPublishedFormDefinition> field collection "

	self fieldValuesDo: [:fieldValueHolder | 
		fieldValueHolder currentValues do: [:fieldValue | definition removeFieldInstance: fieldValue] 
	].