other
testDoIt
	| publishOperation xmlString latestSavedDefinition saveApiOperation formId |

	formId := UUID new asString.
	saveApiOperation := OrbeonFormBuilderSaveApi newWithXml: OrbeonFormDefinitionTemplateFrom2017_2 formDefinition_example_4 id: formId.
	saveApiOperation appName: 'st';
		formName: 'simple-registration';
		doIt.

	publishOperation := OrbeonFormBuilderPublishApi newWithXml: OrbeonFormDefinitionTemplateFrom2017_2 formDefinition_example_4 id: formId.
	publishOperation appName: apiOperation appName;
		formName: apiOperation formName;
		headerVersion: 'next'.

	publishOperation doItIfNotFound: [self assert: false].

	latestSavedDefinition := self getOrbeonApplicationClass getLatestSavedDefinition: apiOperation formName app: apiOperation appName ifNone: [].
	latestSavedDefinition ifNotNil: [apiOperation id: latestSavedDefinition id].

	xmlString := apiOperation doIt.
 
	self assert: xmlString = latestSavedDefinition xmlString