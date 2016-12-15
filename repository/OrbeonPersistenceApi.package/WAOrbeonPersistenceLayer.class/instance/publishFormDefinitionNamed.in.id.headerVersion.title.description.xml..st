service-put-op
publishFormDefinitionNamed: formName in: app id: id headerVersion: headerVersion title: title description: description xml: xmlString
	""
	| orbeonApplication orbeonDefinition existingVersion version |

	orbeonApplication := self getOrbeonApplicationClass applicationNamed: app ifNone: [self createOrbeonApplicationNamed: app].

	version := (headerVersion = 'next') 
							ifTrue: [(orbeonApplication getLastFormDefinitionVersionOf: formName) + 1]
							ifFalse: [Number fromString: headerVersion].

	orbeonDefinition := self createDefinitionNamed: formName in: orbeonApplication withId: id version: version.

	(headerVersion = 'next') ifTrue: [orbeonApplication addPublishedDefinition: orbeonDefinition. ^self]. "is a new definition --> is added as published"

	existingVersion := orbeonApplication definitionNamed: orbeonDefinition formName version: version ifNone: [^nil].
	(self shouldCreateAnotherVersionFor: orbeonDefinition)
	ifFalse: ["the current published definition is updated"
				existingVersion "get the last existing definition and discard <orbeonDefinition>"
					updateLastModifiedTime;
					version: orbeonDefinition version;
					xmlString: self requestContext request rawBody;
					publish;
					processXMLDefinition] 
	ifTrue: [orbeonApplication replaceCurrentDefinition: existingVersion with: orbeonDefinition]