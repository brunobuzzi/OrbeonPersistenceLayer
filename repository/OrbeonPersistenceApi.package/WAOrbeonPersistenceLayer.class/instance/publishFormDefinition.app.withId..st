service-put
publishFormDefinition: formName app: app withId: documentId
	"This method is called by Orbeon when a Form Definition has been published with form name <formName> in application <app> with form id <documentId>"
	| orbeonApplication orbeonDefinition |
	<put>
	<consumes: 'application/xml'>
	<path: '/crud/{2}/{1}/form/form.xhtml?document={3}'>

	orbeonApplication := self getOrbeonApplicationClass applicationNamed: app ifNone: [self createOrbeonApplicationNamed: app].

	orbeonDefinition := self createDefinitionNamed: formName in: orbeonApplication withId: documentId storeSavedDefinition: true.

	(self shouldCreateAnotherVersionFor: orbeonDefinition)
	ifFalse: ["the current published definition is updated"
				(orbeonApplication getDefinitionWithId: orbeonDefinition id ifNone: [orbeonDefinition]) "get the existing definition"
					updateLastModifiedTime;
					version: orbeonDefinition version;
					xmlString: self requestContext request rawBody;
					publish;
					processXMLDefinition] 
	ifTrue: [orbeonApplication addPublishedDefinition: orbeonDefinition] "is a new definition --> is added as published"