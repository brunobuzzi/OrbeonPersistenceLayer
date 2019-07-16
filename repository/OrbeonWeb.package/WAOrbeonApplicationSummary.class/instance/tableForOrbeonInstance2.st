tables
tableForOrbeonInstance2

	^(SewafBooleanOperationTable parent: self)
		summary: 'Forms';
		buttonsFormId: 'operations-buttons-inst';
		operations: #(#(#edit 'Edit') #(#view 'View') #(#viewPdf 'PDF') #(#delete 'Delete'));
		booleanSelector: #booleanValueForInstance:;
		callbackSelector: #selectFormInstance:value:;
		beSortable;
		columns: self tableColumnsForOrbeonInstance;
		rowColors: #(white white);
		rowPeriod: 1;
		yourself