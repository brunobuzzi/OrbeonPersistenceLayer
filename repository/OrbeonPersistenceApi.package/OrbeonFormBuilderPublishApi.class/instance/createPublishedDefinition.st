other
createPublishedDefinition
	"The receiver create a new definition <anOrbeonFormDefinition> named <formName> in application <anOrbeonApplication> with id <id>"
	| orbeonSavedDefinition orbeonDefinition |

	orbeonSavedDefinition := self createSavedDefinition.
	orbeonSavedDefinition storeInApplication. "issue #210 - remove the current saved definition and store <orbeonSavedDefinition>"

	orbeonDefinition := orbeonSavedDefinition definition. "get the <OrbeonPublishedFormDefinition>"

	^orbeonDefinition "new definition to be published"
		updateLastModifiedTime;
		version: version;
		publish;
		processXMLDefinition.