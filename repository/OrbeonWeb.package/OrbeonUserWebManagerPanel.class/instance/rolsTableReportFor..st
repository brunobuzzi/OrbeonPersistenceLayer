other
rolsTableReportFor: anOrbeonUser

	^(SewafBooleanSelectTable parent: self)
		summary: 'User Roles';
		buttonLabel: 'Confirm';
		backcolor: self session user userOptions getBooleanTableBackcolor;
		booleanSelector: #booleanValueForRol:;
		callbackSelector: #modifyRol:value:;
		rows: OrbeonUser allRols asArray; "get collection elements"
		columns: (OrderedCollection new 
						add: (SewafReportColumn selector: #yourself title: 'Role');
						yourself);
		rowColors: #(white white);
		rowPeriod: 1;
		yourself