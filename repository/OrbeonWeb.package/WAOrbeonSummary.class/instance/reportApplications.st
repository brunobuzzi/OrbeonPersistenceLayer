other
reportApplications

	^WATableReport new
		rows: self getOrbeonApplicationCache asArray; "get collection elements"
		columns: (OrderedCollection new 
						add: (SewafReportColumn selector: #app title: 'Applications' onClick: [:each | self renderFormDefinitionFor: each] );
						add: ((SewafReportColumn renderBlock: [:each :html | html anchor callback: [parent synchronize: each]; with: [html image url: (SEWAFFileLibrary / #synchronize24Png)]] title: 'Sync') sortBlock: nil; yourself);
						yourself);
		rowColors: (Array with: #lightblue with: #'rgb(242, 248, 240)');
		rowPeriod: 1;
		yourself