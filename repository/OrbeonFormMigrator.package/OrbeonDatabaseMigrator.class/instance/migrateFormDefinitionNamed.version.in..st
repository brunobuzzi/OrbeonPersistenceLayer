db migration api
migrateFormDefinitionNamed: aString version: version in: applicationName
	"The receiver migrate (from relational database to GemStone) the form definition named <aString> with version <version>.
	An OrbeonFormDefinition will be create inside OrbeonApplication <application>"
	| definition instanceDefinition dbString app |

	definition := self importFormDefinitionNamed: aString version: version in: applicationName.
	definition setMetadata.
	dbString := self getDBStringForInstanceDefinitionWithId: definition id version: version.
	"it could be a form definition with version = 2, but NO form instance definition with version 2 (it was never save after being published) --> we get the last"
	dbString isEmpty ifTrue: [dbString := self getDBStringForInstanceDefinitionWithId: definition id].

	instanceDefinition := self generateFormInstanceDefinition: aString app: applicationName from: dbString.
	instanceDefinition setMetadata.
	definition definition: instanceDefinition.
	instanceDefinition definition: definition.
	app := self getOrbeonApplicationClass applicationNamed: applicationName.
	app addSavedDefinition: instanceDefinition.
	app addPublishedDefinition: definition.

	self importAllFormInstancesOf: definition. "import data <OrbeonFormInstance> filtered by <definition> version"

	self migrateDefinitionCustomAttachmentOf: definition.
	self migrateDefinitionAttachmentsOf: definition.

	self migrateInstanceAttachmentsOf: definition.