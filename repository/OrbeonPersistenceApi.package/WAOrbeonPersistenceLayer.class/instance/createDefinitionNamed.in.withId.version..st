create published definition
createDefinitionNamed: formName in: anOrbeonApplication withId: documentId version: version
	"The receiver create a new definition <anOrbeonFormDefinition> named <formName> in application <anOrbeonApplication> with id <documentId>"
	| orbeonSavedDefinition orbeonDefinition xmlDocument title description xmlString |

	xmlString := self requestContext request rawBody.
	xmlDocument := XMLDOMParser parse: xmlString.
	title := self getFormTitleFrom: xmlDocument ifNone: [''].
	description := self getFormDescriptionFrom: xmlDocument ifNone: [''].

	orbeonSavedDefinition := self createSavedDefinitionNamed: formName 
													in: anOrbeonApplication applicationName 
													version: version 
													id: documentId 
													title: title 
													description: description 
													xml: xmlString.

	orbeonDefinition := orbeonSavedDefinition definition.

	^orbeonDefinition "new definition to be published"
		updateLastModifiedTime;
		version: version;
		publish;
		processXMLDefinition.