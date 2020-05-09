render
renderGemStoneOrbeonSettingOn: html

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
	html label class: 'margin-right-10px'; attributeAt: 'for' put: 'formReader'; with: ('Form Reader Version' translateIn: self session).
	html select 
		attributeAt: 'id' put: 'formReader';
		list: self getOrbeonWebServerConfiguration getOrbeonFormReaders;
		callback: [:formReaderClass | self setFormReader: formReaderClass];
		selected: self getOrbeonWebServerConfiguration getOrbeonFormReaderClassForCombo.
	html submitButton callback: [self savePreferences]; with: ('Save Preferences' translateIn: self session).