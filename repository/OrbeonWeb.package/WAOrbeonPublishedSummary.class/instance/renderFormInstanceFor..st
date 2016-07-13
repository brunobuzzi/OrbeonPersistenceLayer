other
renderFormInstanceFor: anOrbeonFormDefinition

"	anOrbeonFormDefinition isPublished ifFalse: [^self inform: 'This form is Edition and has not been Published yet !']."

	selectedDefinition := anOrbeonFormDefinition.
	instancesArea app: anOrbeonFormDefinition getApplicationName;
		form: anOrbeonFormDefinition formName;
		selectedVersion: anOrbeonFormDefinition version;
		setCollection: anOrbeonFormDefinition instances asArray. "set the Web Grid with instances of the receiver"

	definitionsArea hide.