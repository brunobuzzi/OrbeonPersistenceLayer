tables
tableForOrbeonInstance

	^(SewafSelectTableReport parent: self)
		summary: 'Forms';
		selectedColor: 'gray';
		nonSelectedColor: 'white';
		beSortable;
		columns: self tableColumnsForOrbeonInstance;
		rowColors: #(white white);
		rowPeriod: 1;
		yourself