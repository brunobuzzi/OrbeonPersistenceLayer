other
dbReportColumns

	^OrderedCollection new 
		add: (SewafReportColumn selector: #shortId title: 'Id' onClick: [:each | ] );
		add: (SewafReportColumn selector: #createdTime title: 'Created');
		add: (SewafReportColumn selector: #modifiedTime title: 'Modified Time');
		add: (SewafReportColumn selector: #modifiedUser title: 'Modified By');
		add: (SewafReportColumn selector: #username title: 'User');
		add: (SewafReportColumn selector: #groupname title: 'Group');
		add: (SewafReportColumn selector: #deleted title: 'Deleted');
		add: ((SewafReportColumn renderBlock: [:each :html | html anchor callback: [self topPanel viewInstance: each]; with: [html image url: (SEWAFFileLibrary / #view24Png)]] title: 'View') sortBlock: nil; yourself);
		add: ((SewafReportColumn renderBlock: [:each :html | html anchor callback: [self topPanel editInstance: each]; with: [html image url: (SEWAFFileLibrary / #edit24Png)]] title: 'Edit') sortBlock: nil; yourself);
		add: ((SewafReportColumn renderBlock: [:each :html | html anchor callback: [self topPanel deleteInstance: each]; with: [html image url: (SEWAFFileLibrary / #remove24Png)]] title: 'Del') sortBlock: nil; yourself);
		yourself