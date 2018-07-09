other
renderServerConfigurationSettingOn: html

	html label attributeAt: 'for' put: 'databaseIP'; with: ('Database IP' translateFor: self session user).
	html textInput attributeAt: 'id' put: 'databaseIP'; 
			callback: [:value | self getOrbeonDatabaseConfiguration databaseIP: value]; 
			with: self getOrbeonDatabaseConfiguration databaseIP.
	html label attributeAt: 'for' put: 'databaseUser'; with: ('Database User' translateFor: self session user).
	html textInput attributeAt: 'id' put: 'databaseUser'; 
			callback: [:value | self getOrbeonDatabaseConfiguration databaseUser: value]; 
			with: self getOrbeonDatabaseConfiguration databaseUser.
	html label attributeAt: 'for' put: 'databasePassword'; with: ('Database Password' translateFor: self session user).
	html textInput attributeAt: 'id' put: 'databasePassword'; 
			callback: [:value | self getOrbeonDatabaseConfiguration databasePassword: value]; 
			with: self getOrbeonDatabaseConfiguration databasePassword.
	html label attributeAt: 'for' put: 'orbeonIP'; with: ('Orbeon IP' translateFor: self session user).
	html textInput attributeAt: 'id' put: 'orbeonIP'; 
			callback: [:value | self getOrbeonWebServerConfiguration orbeonIP: value]; 
			with: self getOrbeonWebServerConfiguration orbeonIP.
	html label attributeAt: 'for' put: 'gemstoneIP'; with: ('GemStone/S IP' translateFor: self session user).
	html textInput attributeAt: 'id' put: 'gemstoneIP'; 
			callback: [:value | self getGemStoneServerConfiguration gemstoneIP: value]; 
			with: self getGemStoneServerConfiguration gemstoneIP.
	html label class: 'margin-right-10px'; attributeAt: 'for' put: 'versionName'; with: ('Version Name' translateFor: self session user).
	html select 
		attributeAt: 'id' put: 'versionName';
		list: self getOrbeonWebServerConfiguration getOrbeonXpathVersions;
		callback: [:versionName | self setOrbeonVersion: versionName];
		selected: self getOrbeonWebServerConfiguration getOrbeonXpathVersionForCombo.
	html submitButton callback: [self savePreferences]; with: ('Save Preferences' translateFor: self session user).