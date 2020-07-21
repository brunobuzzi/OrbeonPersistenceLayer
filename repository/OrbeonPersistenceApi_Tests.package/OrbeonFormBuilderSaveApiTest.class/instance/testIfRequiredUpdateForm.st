other
testIfRequiredUpdateForm
	| latestSavedDefinition application currentSize |
 
	latestSavedDefinition := self getOrbeonApplicationClass getLatestSavedDefinition: apiOperation formName app: apiOperation appName ifNone: [nil].
	apiOperation id: latestSavedDefinition id.

	application := latestSavedDefinition application.
	currentSize := application getSaveDefinitionsSizeFor: apiOperation formName.

	apiOperation doIt.

	apiOperation appName: 'ue-test';
		formName: 'simple-registration'