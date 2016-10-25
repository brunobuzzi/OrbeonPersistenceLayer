render
renderFormFieldCombo2On: html

	selectedDefinition ifNil: [^self]. 
 
	html label 
		attributeAt: 'for' put: 'formFields-2';
		with: ('Secondary Field' translateFor: self session user).

	html select "Field Definition List" 
		attributeAt: 'id' put: 'formFields-2';
		class: 'search-section-width-200';
		list: self getFormFieldList;
		callback: [:value | self addSearchValue: value named: 'field-name-2'];
		selected: (self searchValueAt: 'field-name-2' ifAbsent: ['']).