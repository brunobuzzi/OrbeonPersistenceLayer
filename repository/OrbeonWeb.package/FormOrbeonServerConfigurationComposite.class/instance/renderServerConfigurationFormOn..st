other
renderServerConfigurationFormOn: html

	html form class: 'centered-unique-form'; with: [
		html fieldSet with:[
			html legend with: 'Servers Configuration'.
					self renderServerConfigurationSettingOn: html.
					].
				].