forms
createFormInstance: stringID
	| newFormApi |

	newFormApi := OrbeonFormSaveFinalApi newWithXml: OrbeonFormInstanceTemplate form_all_types_2 id: stringID.

	newFormApi appName: 'agesic';
		formName: 'test-all-types-4';
		version: 1;
		isValid: true;
		user: 'bruno';
		modifiedUser: 'bruno'; 
		group: 'admin'.

	newFormApi doIt.