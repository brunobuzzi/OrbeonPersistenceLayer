other
testIssue359
	"Test save form with same appName and formName but different id"
	| application currentSize newId xmlString |
 
	application := testRoot getExistingApplicationOrCreateNewNamed: apiOperation appName.

	apiOperation doIt.

	newId := UUID new asString.
	apiOperation := OrbeonFormBuilderSaveApi newOn: testRoot withXml: testRoot newDefinitionTemplate formDefinition_st_simple_registration id: newId.
	apiOperation appName: 'st';
		formName: 'simple-registration';
		id: newId.

	currentSize := application getClonedSaveDefinitionsSizeWithId: newId.

	xmlString := apiOperation doIt. "same app name and form name but different ID"

	self assert: (application getLastSavedDefinitionFromClonedRegistryWithId: newId) xmlString equals: xmlString.

	self assert: (application getClonedSaveDefinitionsSizeWithId: newId) equals: currentSize + 1.