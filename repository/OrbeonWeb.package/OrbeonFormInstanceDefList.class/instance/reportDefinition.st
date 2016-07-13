other
reportDefinition

	^WATableReport new
		rows: collection asArray; "get collection elements"
		columns: (OrderedCollection new 
						add: (SewafReportColumn selector: #shortId title: 'Id' onClick: [:each | ] );
						add: (SewafReportColumn selector: #app title: 'Application');
						add: (SewafReportColumn selector: #form title: 'Form');
						add: (SewafReportColumn selector: #modifiedTime title: 'Modified Time');
						add: (SewafReportColumn selector: #modifiedUser title: 'Modified By');
						add: (SewafReportColumn selector: #username title: 'User');
						add: (SewafReportColumn selector: #groupname title: 'Group');
						add: (SewafReportColumn selector: #deleted title: 'Deleted');
						yourself);
		rowColors: #(lightblue lightyellow);
		rowPeriod: 1;
		yourself