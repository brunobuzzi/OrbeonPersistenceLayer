forms
createRepeatableFormInstance: stringID
	| newFormApi |

	newFormApi := OrbeonFormSaveFinalApi newWithXml: OrbeonFormInstanceTemplate form_issue369_v1 id: stringID.

	newFormApi appName: 'agesic';
		formName: 'manual-form';
		version: 1;
		isValid: true;
		user: 'bruno';
		modifiedUser: 'bruno'; 
		group: 'admin'.

	newFormApi doIt.