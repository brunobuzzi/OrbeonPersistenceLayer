search area
renderFormDefinitionsComboOn: html
	| definitions |
 
	definitions := (OrderedCollection with: '') addAll: (selectedLateralItem ifNil: [#()] ifNotNil: [:app | app getLastDefinitions keys asSortedCollection]); yourself.
	html div class: 'top-search-div'; with: [
		html label 
			attributeAt: 'for' put: 'form-definition';
			with: ('Form Definitions' translateIn: self session).

		html select "Field Definition List" 
			attributeAt: 'id' put: 'form-definition';
			class: 'width-200px';
			list: definitions;
			callback: [:value | self addSearchValue: value named: 'form-name'];
			selected: (self searchValueAt: 'form-name' ifAbsent: ['']).
	].