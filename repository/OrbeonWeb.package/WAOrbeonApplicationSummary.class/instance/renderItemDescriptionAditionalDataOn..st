other
renderItemDescriptionAditionalDataOn: html
	| definitionSize formsSize |

	definitionSize := selectedLateralItem getNumberOfFormsDefinition.
	formsSize := selectedLateralItem getNumberOfInstances.

	html span with: [html strong: ('Form Definitions:' translateIn: self session)].
	html output: definitionSize printString.

	html span with: [html strong: ('Forms Instances:' translateIn: self session)].
	html output: formsSize printString.