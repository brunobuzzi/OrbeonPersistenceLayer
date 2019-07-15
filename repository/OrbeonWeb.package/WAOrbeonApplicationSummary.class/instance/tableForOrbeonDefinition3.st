tables
tableForOrbeonDefinition3

	^(SewafBooleanOperationTable parent: self)
		summary: 'Designed Forms';
		buttonsFormId: 'operations-buttons';
		operations: #(#(#editDefinition 'Edit') #(#newDefinition 'New') #(#synchronizeSelection 'Import Forms') #(#deleteSelection 'Delete'));
		booleanSelector: #booleanValueForDefinition:;
		callbackSelector: #selectFormDefinition:value:;
		beSortable;
		"rows: self getDefinitionsCollection; ""get collection elements"
		columns: (OrderedCollection new  
						add: self columnForm;
						add: self columnVersion;
						add: self columnCreatedTime;
						add: self columnModifiedTime;
						add: self columnModifiedUser;
						add: self columnDeleted;
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself