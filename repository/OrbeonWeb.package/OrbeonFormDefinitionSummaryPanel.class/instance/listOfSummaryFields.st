other
listOfSummaryFields

	^(SewafSelectTableReport summary: 'List Heading')
		rows: model summaryFields asSortedCollection; "get collection elements"
		selectedColor: self session user userOptions getSelectTableSelectedColor;
		nonSelectedColor: self session user userOptions getSelectTableNonSelectedColor;
		columns: (OrderedCollection new 
						add: (self fieldNameColumnAs: 'List Heading');
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		selectedObject: model;
		yourself