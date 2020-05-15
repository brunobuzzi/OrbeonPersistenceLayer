render
renderFormFieldComboOn: html

	(selectedDefinition isNil or: [chartDefinition scope isFieldValuesScope not]) ifTrue: [^self].

	html div class: 'margin-top-15px'; with: [ 
		html label 
			attributeAt: 'for' put: 'formFields';
			with: ('Field' translateIn: self session).

		html select "Field Definition List" 
			attributeAt: 'id' put: 'formFields';
			class: 'search-section-width-200 margin-left-10px margin-right-10px';
			list: self getFormFieldList;
			onChange: 'submit()';
			callback: [:value | self addSearchValue: value named: 'field-name'. self setChartDefinition];
			selected: (self searchValueAt: 'field-name' ifAbsent: ['']).

		self isFieldEvolutionComparisonDistributionChart ifTrue: [
			html div class: 'display-inline-flex'; with: [
				self renderAddFieldIconOn: html.
				self renderRemoveFieldIconOn: html.
			].
			html div class: 'selected-field-list'; with: [self getAllSelectedFields do: [:each | html text: ' [',each, '] ']].
		].
		(self isFieldEvolutionComparisonDistributionChart or: [self isFieldEvolutionDistributionChart]) 
		ifTrue: [self renderDateGroupsOptionsOn: html].
	].