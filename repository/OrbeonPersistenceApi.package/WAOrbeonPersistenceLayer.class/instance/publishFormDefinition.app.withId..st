service-put
publishFormDefinition: formName app: app withId: documentId
	"This method is called by Orbeon when a Form Definition has been published with form name <formName> in application <app> with form id <documentId>"
	| orbeonApplication orbeonDefinition headerVersion selectedVersion existingVersion |
	<put>
	<consumes: 'application/xml'>
	<path: '/crud/{2}/{1}/form/form.xhtml?document={3}'>

	orbeonApplication := self getOrbeonApplicationClass applicationNamed: app ifNone: [self createOrbeonApplicationNamed: app].

	headerVersion := self requestContext request headerAt: 'orbeon-form-definition-version'.
	"Orbeon put -next- when a new version is going to be generated, if NOT --> then user has updated the existing version <headerVersion> [new in Orbeon 2016.2.2]"
	selectedVersion :=  (headerVersion = 'next') 
							ifTrue: [(orbeonApplication getLastFormDefinitionVersionOf: formName) + 1]
							ifFalse: [Number fromString: headerVersion].

	orbeonDefinition := self createDefinitionNamed: formName in: orbeonApplication withId: documentId version: selectedVersion storeSavedDefinition: true.

	(headerVersion = 'next') ifTrue: [orbeonApplication addPublishedDefinition: orbeonDefinition. ^self]. "is a new definition --> is added as published"

	existingVersion := orbeonApplication definitionNamed: orbeonDefinition formName version: selectedVersion ifNone: [^nil].
	(self shouldCreateAnotherVersionFor: orbeonDefinition)
	ifFalse: ["the current published definition is updated"
				existingVersion "get the last existing definition and discard <orbeonDefinition>"
					updateLastModifiedTime;
					version: orbeonDefinition version;
					xmlString: self requestContext request rawBody;
					publish;
					processXMLDefinition] 
	ifTrue: [orbeonApplication replaceCurrentDefinition: existingVersion with: orbeonDefinition]