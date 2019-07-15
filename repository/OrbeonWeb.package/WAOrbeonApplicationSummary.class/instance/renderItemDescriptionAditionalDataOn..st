main component banner
renderItemDescriptionAditionalDataOn: html

	self isClassSide
	ifTrue: [ | definitionSize formsSize |
		definitionSize := selectedLateralItem getNumberOfFormsDefinition.
		formsSize := selectedLateralItem getNumberOfInstances.

		html span with: [html strong: ('Form Definitions:' translateIn: self session)].
		html output: definitionSize printString.

		html span with: [html strong: ('Forms Instances:' translateIn: self session)].
		html output: formsSize printString.
	]
	ifFalse: [ | formsSize |
		formsSize := selectedFormDefinition numberOfInstances.
		html span with: [html strong: ('Form:' translateIn: self session)].
		html output: selectedFormDefinition formName.
		html span with: [html strong: ('Version' translateIn: self session)].
		html output: selectedFormDefinition version.
		html span with: [html strong: ('Form Instances:' translateIn: self session)].
		html output: formsSize printString.
	]