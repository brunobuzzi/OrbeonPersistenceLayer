field instances
updateFieldInstancesFrom: aFieldValueHolder
	"The receiver update the field's values <FormFieldValue> in the holder <aFieldValueHolder> and mark it as processed.
	The collections <aFieldValueHolder toAdd> and <aFieldValueHolder toRemove> are complemtary, so if one has elements then the other is empty and viceversa. 
	<aFieldValueHolder> is used for repeatable fields with indexes. 
	If a value is removed from the repeatable field --> must be removed from the index collection. <FieldValueHolder> class track these changes"

	aFieldValueHolder alreadyAddedToFormDefinition 
	ifFalse: [aFieldValueHolder alreadyAddedToFormDefinition: true.
		^aFieldValueHolder currentValues do: [:each | self addFieldInstance: each]]. "executed only once"

	"values has been added to the field after a edit operation"
	aFieldValueHolder toAdd do: [:each | self addFieldInstance: each].

	"values has been removed to the field after a edit operation"
	aFieldValueHolder toRemove do: [:each | self removeFieldInstance: each]. 

"	aFieldValueHolder alreadyAddedToFormDefinition: true."