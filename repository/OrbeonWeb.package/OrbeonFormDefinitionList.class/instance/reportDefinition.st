selection
reportDefinition

	^(SewafBooleanOperationTable parent: self)
		summary: 'Designed Forms';
		buttonsFormId: 'operations-buttons';
		operations: #(#(#editSelection 'Edit') #(#new 'New') #(#synchronizeSelection 'Import Forms') #(#deleteSelection 'Delete'));
		booleanSelector: #booleanValueForDefinition:;
		callbackSelector: #modifySelection:value:;
		beSortable;
		"rows: self getDefinitionsCollection;" "get collection elements"
		columns: (OrderedCollection new  
						add: self columnForm;
						add: self columnApplication;
						add: self columnVersion;
						add: self columnCreatedTime;
						add: self columnModifiedTime;
						add: self columnModifiedUser;
						add: self columnDeleted;
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself