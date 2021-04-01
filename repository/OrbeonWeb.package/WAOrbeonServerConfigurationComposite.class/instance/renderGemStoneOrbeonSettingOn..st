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

	html label class: 'margin-right-10px'; attributeAt: 'for' put: 'dataFormatVersion'; with: ('Data Format Version' translateIn: self session).
	html textInput 
			attributeAt: 'id' put: 'dataFormatVersion';
			readonly: true;
			value: self defaultOrbeonDataFormatVersion printName.

	html submitButton callback: [self savePreferences]; with: ('Save Preferences' translateIn: self session).