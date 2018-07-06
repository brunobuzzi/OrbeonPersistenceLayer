migration api
migrateFormDefinitionNamed: aString version: version
	"The receiver migrate (from MySQL to GemStone) the form definition named <aString> with version <version>.
	An OrbeonFormDefinition will be create inside OrbeonApplication <application>"
	| definition instanceDefinition dbString |

	definition := self getOrbeonHandler importFormDefinitionNamed: aString version: version in: application applicationName addToApp: true.
	definition setMetadata.
	dbString := self getOrbeonHandler getDBStringForInstanceDefinitionWithId: definition id version: version.
	"it could be a form definition with version = 2, but NO form instance definition with version 2 (it was never save after being published) --> we get the last"
	dbString isEmpty ifTrue: [dbString := self getOrbeonHandler getDBStringForInstanceDefinitionWithId: definition id].

	instanceDefinition := self getOrbeonHandler generateFormInstanceDefinition: aString app: application applicationName from: dbString.
	instanceDefinition setMetadata.
	definition definition: instanceDefinition.
	instanceDefinition definition: definition.
	application addSavedDefinition: instanceDefinition.

	self getOrbeonHandler importDataFromScratchOf: definition. "import data <OrbeonFormInstance> filtered by <definition> version"

	self migrateDefinitionCustomAttachmentOf: definition.
	self migrateDefinitionAttachmentsOf: definition.

	self migrateInstanceAttachmentsOf: definition.