render
renderChartTypeComboOn: html

	html select 
		list: self getCharScopeNames;
		onChange: 'submit()';
		selected: (self searchValueAt: 'chart-scope'); 
		callback: [:value | self addSearchValue: value named: 'chart-scope'].
	html select 
		list: self getChartTypes;
		selected: (self searchValueAt: 'chart-type'); 
		onChange: 'submit()';
		callback: [:value | self addSearchValue: value named: 'chart-type'].

	((self searchValueAt: 'chart-type' ifAbsent: ['']) includesSubString: 'Day Distribution') 
	ifTrue: [
		html label: [ 
			html checkbox value: (self searchValueAt: 'dayHasContent' ifAbsent: ['']); callback: [:value | self addSearchValue: value named: 'dayHasContent'].
			html text: 'Show Days Count'
		].
	].