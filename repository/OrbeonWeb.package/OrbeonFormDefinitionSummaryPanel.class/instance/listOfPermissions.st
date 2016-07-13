other
listOfPermissions

	^(SewafSelectTableReport summary: 'Grants')
		rows: model permissionsCollection; "get collection elements"
		selectedColor: self session user userOptions getSelectTableSelectedColor;
		nonSelectedColor: self session user userOptions getSelectTableNonSelectedColor;
		columns: (OrderedCollection new 
						add: (self fieldNameColumnAs: 'Grants');
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		selectedObject: model;
		yourself