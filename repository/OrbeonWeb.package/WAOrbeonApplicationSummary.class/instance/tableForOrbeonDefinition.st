tables
tableForOrbeonDefinition

	^(SewafSelectTableReport parent: self)
		selectedColor: 'gray';
		nonSelectedColor: 'white';
		columns: (OrderedCollection new  
						add: self columnForm;
						add: self columnVersion;
						add: self columnCreatedTime;
						add: self columnModifiedTime;
						add: self columnModifiedUser;
						add: self columnDeleted;
						add: self columnEdit;
						add: self columnImport;
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself