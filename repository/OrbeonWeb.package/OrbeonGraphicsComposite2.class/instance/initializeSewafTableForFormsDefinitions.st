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
		yourself.

	^self addSewafTable: table named: 'FormsDefinitions'.