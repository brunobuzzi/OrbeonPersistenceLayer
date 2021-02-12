other
createPublishedDefinition
	"The receiver create a new definition <anOrbeonFormDefinition> named <formName> in application <anOrbeonApplication> with id <id>"
	| orbeonSavedDefinition orbeonDefinition |

	orbeonSavedDefinition := self getOrbeonApplicationClass getLatestSavedDefinition: self getFormName app: self getApplicationName ifNone: [NoOrbeonFormException signal].
	orbeonDefinition := orbeonSavedDefinition definition. "get the <OrbeonPublishedFormDefinition>"

	^orbeonDefinition "new definition to be published"
		id: id;
		updateLastModifiedTime;
		version: version;
		setTitleAndDescription;
		xmlString: xmlString;
		publish;
		processXMLDefinition.