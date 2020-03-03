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