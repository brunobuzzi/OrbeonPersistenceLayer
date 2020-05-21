other
renderContentOn: html

	html div "class: 'jquery-dialog-yes-no';" with: [
		html form 
			with: [
				html fieldSet with: [
					html legend: ('Chart Name' translateIn: self session).
					html label for: 'chartName'; with: ('Name' translateIn: self session).
					html textInput id: 'chartName'; callback: [:value | model name: value]; with: model name. 
					html label for: 'chartDescription'; with: ('Description' translateIn: self session).
					html textArea id: 'chartDescription'; callback: [:value | model description: value]; with: model description. 
					html div class: 'margin-top-10px float-right'; with: [
						html button 
							callback: [self storeChart];
							with: ('Save Chart' translateIn: self session).
					]
				].
			]
	]