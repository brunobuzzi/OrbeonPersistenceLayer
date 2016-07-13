create published definition
createDefinitionNamed: formName in: anOrbeonApplication withId: documentId storeSavedDefinition: aBoolean
	"The receiver create a new definition <anOrbeonFormDefinition> named <formName> in application <anOrbeonApplication> with id <documentId>"
	| headerVersion currentVersion orbeonSavedDefinition orbeonDefinition xmlDocument title description xmlString |

	xmlString := self requestContext request rawBody.
	xmlDocument := XMLDOMParser parse: xmlString.
	title := self getFormTitleFrom: xmlDocument ifNone: [''].
	description := self getFormDescriptionFrom: xmlDocument ifNone: [''].

	headerVersion := self requestContext request headerAt: 'orbeon-form-definition-version'.
	currentVersion := anOrbeonApplication getLastFormDefinitionVersionOf: formName.
	"Orbeon put -next- when a new version is going to be generated if NOT --> the current version is updated"
	(headerVersion = 'next') ifTrue: [currentVersion := currentVersion + 1].

	orbeonSavedDefinition := self createSavedDefinitionNamed: formName 
													in: anOrbeonApplication applicationName 
													version: currentVersion 
													id: documentId 
													title: title 
													description: description 
													xml: xmlString.

	aBoolean ifTrue: [anOrbeonApplication addSavedDefinition: orbeonSavedDefinition].

	orbeonDefinition := orbeonSavedDefinition definition.

	^orbeonDefinition "new definition to be published"
		updateLastModifiedTime;
		version: currentVersion;
		publish;
		processXMLDefinition.