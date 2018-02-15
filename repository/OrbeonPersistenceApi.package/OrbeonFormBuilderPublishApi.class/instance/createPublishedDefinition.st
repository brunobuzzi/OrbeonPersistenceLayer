other
createPublishedDefinition
	"The receiver create a new definition <anOrbeonFormDefinition> named <formName> in application <anOrbeonApplication> with id <id>"
	| orbeonSavedDefinition orbeonDefinition |

	orbeonSavedDefinition := self createSavedDefinitionNamed: formName in: appName title: formReader getTitle description: formReader getDescription.

	orbeonDefinition := orbeonSavedDefinition definition. "get the <OrbeonPublishedFormDefinition>"

	^orbeonDefinition "new definition to be published"
		updateLastModifiedTime;
		version: version;
		publish;
		processXMLDefinition.