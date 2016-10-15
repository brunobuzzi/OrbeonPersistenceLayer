render
renderChartTypeComboOn: html

	html select 
		list: self getCharScopeNames;
		selected: (self searchValueAt: 'chart-scope'); 
		callback: [:value | self addSearchValue: value named: 'chart-scope'];
		onChange: 'submit()'.
	html select 
		list: self getChartTypes;
		selected: (self searchValueAt: 'chart-type'); 
		callback: [:value | self addSearchValue: value named: 'chart-type'];
		onChange: 'submit()'.

	((self searchValueAt: 'chart-type' ifAbsent: ['']) includesSubString: 'Day Distribution') 
	ifTrue: [
html break.
		html label: [ 
			html checkbox value: (self searchValueAt: 'dayHasContent' ifAbsent: ['']); callback: [:value | self addSearchValue: value named: 'dayHasContent'].
			html text: 'Show Days Count'
		].
	].
html break.