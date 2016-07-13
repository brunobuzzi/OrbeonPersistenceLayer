other
userList

	^(SewafSelectTableReport summary: 'User List')
		rows: userCollection asArray; "get collection elements"
		selectedColor: self session user userOptions getSelectTableSelectedColor;
		nonSelectedColor: self session user userOptions getSelectTableNonSelectedColor;
		columns: (OrderedCollection new 
						add: self nameReportColumn;
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		selectedObject: selectedUser;
		yourself