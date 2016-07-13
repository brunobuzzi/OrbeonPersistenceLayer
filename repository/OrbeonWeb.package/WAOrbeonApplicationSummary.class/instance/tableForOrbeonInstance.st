other
tableForOrbeonInstance

	^(SewafBooleanOperationTable parent: self)
		summary: 'Forms';
		buttonsFormId: 'operations-buttons-inst';
		operations: #(#(#edit 'Edit') #(#view 'View') #(#viewPdf 'PDF') #(#delete 'Delete'));
		booleanSelector: #booleanValueForDefinition:;
		callbackSelector: #modifySelection:value:;
		beSortable;
		columns: self tableColumnsForOrbeonInstance;
		rowColors: #(white white);
		rowPeriod: 1;
		yourself