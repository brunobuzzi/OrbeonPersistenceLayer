other
renderItemDescriptionAditionalDataOn: html

	html span with: [html strong: ('Description:' translateIn: self session)].
	html output: selectedLateralItem description.