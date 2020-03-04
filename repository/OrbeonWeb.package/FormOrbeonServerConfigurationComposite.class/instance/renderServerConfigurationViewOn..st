other
renderServerConfigurationViewOn: html

	html form class: 'centered-unique-form'; with: [
		html fieldSet with:[
			html legend with: 'Servers Configuration'.
			html label with: 'Database IP'.
			html textInput 
				callback: [:value | self getOrbeonDatabaseConfiguration databaseIP: value]; 
				readonly: true; 
				with: self getOrbeonDatabaseConfiguration databaseIP.
			html label class: 'margin-right-10px'; attributeAt: 'for' put: 'databaseName'; with: ('Database & Orbeon DB Version' translateIn: self session).
			html select 
				attributeAt: 'id' put: 'databaseName';
				list: OrbeonDatabaseReader getAllDatabaseReadersComboNames;
				callback: [:versionName | self setDatabaseName: versionName];
				selected: self getOrbeonWebServerConfiguration getDatabaseReaderName.
			html label with: 'Database User'.
			html textInput 
				callback: [:value | self getOrbeonDatabaseConfiguration databaseUser: value]; 
				readonly: true; 
				with: self getOrbeonDatabaseConfiguration databaseUser.
			html label with: 'Database Password'.
			html textInput 
				callback: [:value | self getOrbeonDatabaseConfiguration databasePassword: value]; 
				readonly: true; 
				with: self getOrbeonDatabaseConfiguration databasePassword.
			html label with: 'Orbeon IP'.
			html textInput 
				callback: [:value | self getOrbeonWebServerConfiguration orbeonIP: value]; 
				readonly: true; 
				with: self getOrbeonWebServerConfiguration orbeonIP.
			html label with: 'GemStone/S IP'.
			html textInput 
				callback: [:value | self getGemStoneServerConfiguration gemstoneIP: value]; 
				readonly: true; 
				with: self getGemStoneServerConfiguration gemstoneIP.
			html label class: 'margin-right-10px'; attributeAt: 'for' put: 'versionName'; with: ('XPath for Orbeon Version' translateIn: self session).
			html select 
				isEnabled: false;
				attributeAt: 'id' put: 'versionName';
				list: self getOrbeonWebServerConfiguration getOrbeonXpathVersions;
				callback: [:versionName | self setOrbeonVersion: versionName];
				selected: self getOrbeonWebServerConfiguration getOrbeonXpathVersionForCombo.
		].
	].