other
initializeNavigation
	| subMenu1 subMenu2  |

	navigation := SewafPortalMenu new iconLibrary: SEWAFIconLibrary.
	subMenu1 := (SewafSubMenuItem label: 'Applications' icon: #box148Png)
		addItem: (SewafCommandItem label: 'View Applications' command: #viewOrbeonApplications);
		yourself.
	subMenu2 := (SewafSubMenuItem label: 'Orbeon Summaries' icon: #actionsviewlistdetails48Png)
		addItem: (SewafCommandItem label: 'View Summary' command: #viewOrbeonSummary);
		addItem: (SewafCommandItem label: 'Create Graphics' command: #viewGraphics);
		addItem: (SewafCommandItem label: 'View Graphics Report' command: #viewGraphicsReports);
		yourself.
	navigation addItem: subMenu1;
		addItem: subMenu2.