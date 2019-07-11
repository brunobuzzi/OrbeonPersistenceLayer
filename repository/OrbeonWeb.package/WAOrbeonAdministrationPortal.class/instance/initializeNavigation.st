other
initializeNavigation
	| subMenu1 subMenu2 subMenu3 |

	navigation := SewafPortalMenu new iconLibrary: SEWAFIconLibrary.
	subMenu1 := (SewafSubMenuItem label: 'Applications' icon: #lightbrownbox32Png)
		addItem: (SewafCommandItem label: 'View Applications' command: #viewOrbeonApplications);
		yourself.
	subMenu2 := (SewafSubMenuItem label: 'Forms Charts' icon: #barchart32Png)
		addItem: (SewafCommandItem label: 'Create Chart' command: #viewGraphics);
		addItem: (SewafCommandItem label: 'Saved Charts' command: #viewGraphicsReports);
		yourself.
	subMenu3 := (SewafSubMenuItem label: 'Repository Operations' icon: #databaseactive32Png)
		addItem: (SewafCommandItem label: 'Server Configuration' command: #setServersConfiguration);
		addItem: (SewafCommandItem label: 'Import Forms from DB' command: #importFormsFromDatabase);
		yourself.
	navigation addItem: subMenu1;
		addItem: subMenu2;
		addItem: subMenu3.