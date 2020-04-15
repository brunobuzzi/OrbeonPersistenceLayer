render
renderChartScopeComboOn: html

	html label attributeAt: 'for' put: 'scope'; with: ('Scope' translateIn: self session).
	html select 
		attributeAt: 'id' put: 'scope';
		list: self getCharScopeNames;
		onChange: 'submit()';
		selected: (self searchValueAt: 'chart-scope'); 
		callback: [:value | self addSearchValue: value named: 'chart-scope'].

	html label attributeAt: 'for' put: 'chart-type'; with: ('Chart Type' translateIn: self session).
	html select 
		attributeAt: 'id' put: 'chart-type'; 
		list: self getChartTypes;
		selected: (self searchValueAt: 'chart-type'); 
		onChange: 'submit()';
		callback: [:value | self addSearchValue: value named: 'chart-type'].