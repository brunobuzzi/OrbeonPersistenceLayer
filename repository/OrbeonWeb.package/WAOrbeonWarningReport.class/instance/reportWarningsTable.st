other
reportWarningsTable

	^(SewafSelectTableReport summary: 'Warnings')
		rows: warnings; "get collection elements"
		selectedColor: self session user userOptions getSelectTableSelectedColor;
		nonSelectedColor: self session user userOptions getSelectTableNonSelectedColor;
		columns: (OrderedCollection new 
						add: self createFormNameRowReport;
						add: self createFieldWarning;
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself