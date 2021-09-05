other
testDoIt
	| publishOperation xmlString latestSavedDefinition saveApiOperation formId |

	formId := UUID new asString.
	saveApiOperation := OrbeonFormBuilderSaveApi newOn: testRoot withXml: testRoot newDefinitionTemplate formDefinition_agesic_test_all_types_4 id: formId.
	saveApiOperation appName: 'st';
		formName: 'simple-registration';
		doIt.

	publishOperation := OrbeonFormBuilderPublishApi newOn: testRoot withXml: testRoot newDefinitionTemplate formDefinition_agesic_test_all_types_4 id: formId.
	publishOperation appName: apiOperation appName;
		formName: apiOperation formName;
		headerVersion: 'next'.

	publishOperation doItIfNotFound: [self assert: false].

	latestSavedDefinition := testRoot getLatestSavedDefinition: apiOperation formName app: apiOperation appName ifNone: [].
	latestSavedDefinition ifNotNil: [apiOperation id: latestSavedDefinition id].

	xmlString := apiOperation doIt.
 
	self assert: xmlString = latestSavedDefinition xmlString