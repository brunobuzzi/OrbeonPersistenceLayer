other
listOfFieldNames

	^(SewafSelectTableReport summary: 'Form Fields')
		rows: model getFieldsNames asSortedCollection; "get collection elements"
		selectedColor: self session user userOptions getSelectTableSelectedColor;
		nonSelectedColor: self session user userOptions getSelectTableNonSelectedColor;
		columns: (OrderedCollection new 
						add: self fieldNameColumn;
						add: self fieldTypeColumn;
						add: self fieldLabelColumn;
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		selectedObject: model;
		yourself