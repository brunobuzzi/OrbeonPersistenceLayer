other
reportDefinition

	^(SewafBooleanOperationTable parent: self)
		summary: 'Forms';
		buttonsFormId: 'operations-buttons-inst';
		operations: #(#(#edit 'Edit') #(#view 'View') #(#viewPdf 'PDF') #(#delete 'Delete'));
		booleanSelector: #booleanValueForDefinition:;
		callbackSelector: #modifySelection:value:;
		beSortable;
		rows: collection asArray; "get collection elements"
		columns: self xmlReportColumns;
		rowColors: #(white white);
		rowPeriod: 1;
		yourself