other
execute
	"The receiver publish the form named <formName> in application named <app> with id <id> title <title> description <description> and xml <xmlString>. 
	The version of the form is in <headerVersion> - orbeon parameter.
	* Calculate the version number & create <anOrbeonSavedFormDefinition> 
	* Compare latest published version with the new one --> [update the current |or| add the new one]"
	| orbeonApplication latestSavedDefinition orbeonPublishedDefinition existingVersion |

	orbeonApplication := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: appName.

	version := (headerVersion = 'next') 
							ifTrue: [(orbeonApplication getLastFormDefinitionVersionOf: formName) + 1]
							ifFalse: [Number fromString: headerVersion].

	latestSavedDefinition := self getOrbeonApplicationClass getLatestSavedDefinition: formName app: appName ifNone: [nil].
	"is there a form definition with <formName> in application <appName> & the document_id <id> are different ??? 
	--> if <true> --> creation NOT allowed"
	(self isCreationRejectedFor: latestSavedDefinition) 
	ifFalse: [self ifRequiredUpdateForm] "if the <formName> or <appName> has been changed"
	ifTrue: [^AlreadyExistApplicationOrFormNameException signal: 'Not allowed to save [', formName,'] in application [', appName, ']'].

	orbeonPublishedDefinition := self createPublishedDefinition.

	(headerVersion = 'next') ifTrue: [orbeonApplication addPublishedDefinition: orbeonPublishedDefinition. ^self]. "is a new definition --> is added as published"

	existingVersion := orbeonApplication definitionNamed: orbeonPublishedDefinition formName version: version ifNone: [^restHandler noRouteFound: self requestContext].
	(self shouldCreateAnotherVersionFor: orbeonPublishedDefinition)
	ifFalse: ["the current published definition is updated"
				existingVersion "get the last existing definition and discard <orbeonDefinition>"
					updateLastModifiedTime;
					version: orbeonPublishedDefinition version;
					xmlString: self requestContext request rawBody;
					publish;
					processXMLDefinition] 
	ifTrue: [orbeonApplication replaceCurrentDefinition: existingVersion with: orbeonPublishedDefinition]