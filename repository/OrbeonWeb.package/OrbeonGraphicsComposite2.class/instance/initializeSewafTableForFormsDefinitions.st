other
initializeSewafTableForFormsDefinitions
	| table |

	table := (SewafSelectTableReport parent: self)
		"rows: self searchRoles; "
		selectedColor: 'gray';
		nonSelectedColor: 'white';
		columns: self columnsForFormsDefinitions;
		rowColors: #(white white);
		rowPeriod: 1;
		tableClass: 'width-98per';
		yourself.

	^self addSewafTable: table named: 'FormsDefinitions'.