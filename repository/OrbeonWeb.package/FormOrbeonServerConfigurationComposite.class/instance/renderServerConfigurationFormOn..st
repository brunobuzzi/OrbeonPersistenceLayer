render
renderServerConfigurationFormOn: html

	html div class: 'display-inline-flex'; with: [
		html div class: 'centered-unique-form'; with: [
			html form with: [
				html fieldSet with:[
					html legend with: ('Servers Configuration' translateIn: self session).
					self renderOrbeonDatabaseSettingOn: html.
				].
			].
		].

		html div class: 'centered-unique-form'; with: [
			html form with: [
				html fieldSet with:[
					html legend with: ('GemStone Orbeon Communication' translateIn: self session).
					self renderGemStoneOrbeonSettingOn: html.
				].
			].
		].
	].