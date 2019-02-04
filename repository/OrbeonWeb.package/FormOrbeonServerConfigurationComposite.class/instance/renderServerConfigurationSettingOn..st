other
renderServerConfigurationSettingOn: html

	html label attributeAt: 'for' put: 'databaseIP'; with: ('Database IP' translateIn: self session).
	html textInput attributeAt: 'id' put: 'databaseIP'; 
			callback: [:value | self getOrbeonDatabaseConfiguration databaseIP: value]; 
			with: self getOrbeonDatabaseConfiguration databaseIP.
	html label class: 'margin-right-10px'; attributeAt: 'for' put: 'databaseName'; with: ('Database & Orbeon DB Version' translateIn: self session).
	html select 
		attributeAt: 'id' put: 'databaseName';
		list: OrbeonDatabaseReader getAllDatabaseReadersComboNames;
		callback: [:versionName | self setDatabaseName: versionName];
		selected: self getOrbeonWebServerConfiguration getDatabaseReaderName.
	html label attributeAt: 'for' put: 'databaseUser'; with: ('Database User' translateIn: self session).
	html textInput attributeAt: 'id' put: 'databaseUser'; 
			callback: [:value | self getOrbeonDatabaseConfiguration databaseUser: value]; 
			with: self getOrbeonDatabaseConfiguration databaseUser.
	html label attributeAt: 'for' put: 'databasePassword'; with: ('Database Password' translateIn: self session).
	html textInput attributeAt: 'id' put: 'databasePassword'; 
			callback: [:value | self getOrbeonDatabaseConfiguration databasePassword: value]; 
			with: self getOrbeonDatabaseConfiguration databasePassword.
	html label attributeAt: 'for' put: 'orbeonIP'; with: ('Orbeon IP' translateIn: self session).
	html textInput attributeAt: 'id' put: 'orbeonIP'; 
			callback: [:value | self getOrbeonWebServerConfiguration orbeonIP: value]; 
			with: self getOrbeonWebServerConfiguration orbeonIP.
	html label attributeAt: 'for' put: 'gemstoneIP'; with: ('GemStone/S IP' translateIn: self session).
	html textInput attributeAt: 'id' put: 'gemstoneIP'; 
			callback: [:value | self getGemStoneServerConfiguration gemstoneIP: value]; 
			with: self getGemStoneServerConfiguration gemstoneIP.
	html label class: 'margin-right-10px'; attributeAt: 'for' put: 'versionName'; with: ('XPath for Orbeon Version' translateIn: self session).
	html select 
		attributeAt: 'id' put: 'versionName';
		list: self getOrbeonWebServerConfiguration getOrbeonXpathVersions;
		callback: [:versionName | self setOrbeonVersion: versionName];
		selected: self getOrbeonWebServerConfiguration getOrbeonXpathVersionForCombo.
	html submitButton callback: [self savePreferences]; with: ('Save Preferences' translateIn: self session).