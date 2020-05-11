other
reportTableFor: anOrderedCollection

	^(SewafSelectTableReport summary: 'Imported Definitions')
		rows: anOrderedCollection; "get collection elements"
	"	selectedColor: self session user userOptions getSelectTableSelectedColor;
		nonSelectedColor: self session user userOptions getSelectTableNonSelectedColor;"
		columns: (OrderedCollection new 
						add: self createApplicationNameRowReport;
						add: self createFormNameRowReport;
						add: self createFormInstancesRowReport;
						add: self createWarningButton;
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself