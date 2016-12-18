service-put-op
publishFormDefinitionNamed: formName in: app id: id headerVersion: headerVersion title: title description: description xml: xmlString
	"The receiver publish the form named <formName> in application named <app> with id <id> title <title> description <description> and xml <xmlString>. 
	The version of the form is in <headerVersion> - orbeon parameter.
	* Calculate the version number & create <anOrbeonSavedFormDefinition> 
	* Compare latest published version with the new one --> [update the current |or| add the new one]"
	| orbeonApplication latestSavedDefinition orbeonPublishedDefinition existingVersion version |

	orbeonApplication := self getOrbeonApplicationClass applicationNamed: app ifNone: [self createOrbeonApplicationNamed: app].

	version := (headerVersion = 'next') 
							ifTrue: [(orbeonApplication getLastFormDefinitionVersionOf: formName) + 1]
							ifFalse: [Number fromString: headerVersion].

	latestSavedDefinition := self getOrbeonApplicationClass getLatestSavedDefinition: formName app: app ifNone: [nil].
	"is there a form definition with <formName> in application <appName> & the document_id <id> are different ??? 
	--> if <true> --> creation NOT allowed"
	(self isCreationRejectedFor: latestSavedDefinition withId: id inApp: app form: formName) 
	ifFalse: [self ifRequiredUpdateFormWithId: id withApplicationName: app andFormName: formName] "if the <formName> or <appName> has been changed"
	ifTrue: [^AlreadyExistApplicationOrFormNameException signal: 'Not allowed to save [', formName,'] in application [', app, ']'].

	orbeonPublishedDefinition := self createDefinitionNamed: formName in: orbeonApplication withId: id version: version.

	(headerVersion = 'next') ifTrue: [orbeonApplication addPublishedDefinition: orbeonPublishedDefinition. ^self]. "is a new definition --> is added as published"

	existingVersion := orbeonApplication definitionNamed: orbeonPublishedDefinition formName version: version ifNone: [^self noRouteFound: self requestContext].
	(self shouldCreateAnotherVersionFor: orbeonPublishedDefinition)
	ifFalse: ["the current published definition is updated"
				existingVersion "get the last existing definition and discard <orbeonDefinition>"
					updateLastModifiedTime;
					version: orbeonPublishedDefinition version;
					xmlString: self requestContext request rawBody;
					publish;
					processXMLDefinition] 
	ifTrue: [orbeonApplication replaceCurrentDefinition: existingVersion with: orbeonPublishedDefinition]