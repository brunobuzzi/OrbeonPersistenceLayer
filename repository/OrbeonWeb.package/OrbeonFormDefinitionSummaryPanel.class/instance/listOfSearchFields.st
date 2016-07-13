other
listOfSearchFields

	^(SewafSelectTableReport summary: 'Serach Fields')
		rows: model searchFields asSortedCollection; "get collection elements"
		selectedColor: self session user userOptions getSelectTableSelectedColor;
		nonSelectedColor: self session user userOptions getSelectTableNonSelectedColor;
		columns: (OrderedCollection new 
						add: (self fieldNameColumnAs: 'Serach Fields');
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		selectedObject: model;
		yourself