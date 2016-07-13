other
renderOptionsOn: html

	html div id: 'manager-options'; 
		with: [
			html div class: 'top-toolbar-menu top-toolbar-menu-x2'; with: [
				self renderLoginModeIconOn: html. 
				self renderServerConfigurationSettingOn: html.].
			html div class: 'top-toolbar-menu top-toolbar-menu-x1'; with: [
				self renderManageUsersIconOn: html].
			html div class: 'top-toolbar-menu top-toolbar-menu-x1'; with: [
				self renderOrbeonWebIconOn: html].
		"		self renderManageSurveysOn: html.
				self renderGarbageCollectorOn: html. 
				self renderManageGemsOn: html.
				self renderRestartOrbeonTomcatOn: html.
				self renderChartsOn: html."].