search area
renderSearchAreaOn: html

	self isClassSide ifFalse: [^self].

	self renderShowHideJsWindowIconOn: html. "show/hide search area"

	html div id: 'top-search-form'; 
		with: [html form with: [ 
					html fieldSet with: [
						html legend class: 'top-search-legend'; with: ('Search' translateIn: self session).
						self renderFormDefinitionsComboOn: html.
						self renderSearchButtonOn: html.
					]
				]
		]