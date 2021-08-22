render
renderOrbeonDatabaseSettingOn: html

	html label attributeAt: 'for' put: 'databaseIP'; with: ('Database IP' translateIn: self session).
	html textInput attributeAt: 'id' put: 'databaseIP'; 
			callback: [:value | self getOrbeonDatabaseConfiguration databaseIP: value]; 
			with: self getOrbeonDatabaseConfiguration databaseIP.
	html label class: 'margin-right-10px'; attributeAt: 'for' put: 'databaseName'; with: ('Database & Orbeon DB Version' translateIn: self session).
	html select 
		attributeAt: 'id' put: 'databaseName';
		list: OrbeonDatabaseReader getAllDatabaseReadersComboNames;
		callback: [:versionName | self setDatabaseName: versionName];
		selected: self session systemRoot getDatabaseReaderName.
	html label attributeAt: 'for' put: 'databaseUser'; with: ('Database User' translateIn: self session).
	html textInput attributeAt: 'id' put: 'databaseUser'; 
			callback: [:value | self getOrbeonDatabaseConfiguration databaseUser: value]; 
			with: self getOrbeonDatabaseConfiguration databaseUser.
	html label attributeAt: 'for' put: 'databasePassword'; with: ('Database Password' translateIn: self session).
	html textInput attributeAt: 'id' put: 'databasePassword'; 
			callback: [:value | self getOrbeonDatabaseConfiguration databasePassword: value]; 
			with: self getOrbeonDatabaseConfiguration databasePassword.
	html submitButton callback: [self savePreferences]; with: ('Save Preferences' translateIn: self session).