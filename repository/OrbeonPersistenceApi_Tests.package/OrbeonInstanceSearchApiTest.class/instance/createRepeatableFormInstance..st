forms
createRepeatableFormInstance: stringID
	| newFormApi |

	newFormApi := OrbeonFormSaveFinalApi newOn: self systemRoot withXml: self newInstanceTemplate formInstance_agesic_manual_form_issue_369 id: stringID.

	newFormApi appName: 'agesic';
		formName: 'manual-form';
		version: 1;
		isValid: true;
		user: 'bruno';
		modifiedUser: 'bruno'; 
		group: 'admin'.

	newFormApi doIt.