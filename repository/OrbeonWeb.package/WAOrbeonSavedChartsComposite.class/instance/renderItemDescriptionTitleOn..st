other
renderItemDescriptionTitleOn: html
   | jQueryId |

	html span with: [html strong: ('Name: ' translateIn: self session)].
	html output: selectedLateralItem name.

	jQueryId := self renderJQueryConfirmationDialogOn: html forActionNamed: 'removeChart' actionMethod: #removeChart.

	html div class: 'float-right margin-left-5px'; with: [
		html anchor 
					class: 'cursor-pointer';
					onClick: (html jQuery id: jQueryId) dialog open;
						with: [html image url: (SEWAFIconLibrary / #remove24Png); 
												title: ('Remove Chart' translateIn: self session); 
												altText: ('Remove Chart' translateIn: self session) ]
	]