db migration api
migrateFormDefinitionNamed: aString version: version in: applicationName
	"The receiver migrate (from relational database to GemStone) the form definition named <aString> with version <version>.
	An OrbeonFormDefinition will be create inside OrbeonApplication <application>"
	| definition savedDefinition dbString app |

	definition := self importFormDefinitionNamed: aString version: version in: applicationName.
	definition setMetadata.
	dbString := self getDBStringForInstanceDefinitionWithId: definition id version: version.
	"it could be a form definition with version = 2, but NO form instance definition with version 2 (it was never save after being published) --> we get the last"
	dbString isEmpty ifTrue: [dbString := self getDBStringForInstanceDefinitionWithId: definition id].

	savedDefinition := self generateFormInstanceDefinition: aString app: applicationName from: dbString.
	savedDefinition setMetadata.
	definition definition: savedDefinition.
	savedDefinition definition: definition.
	app := systemRoot applicationNamed: applicationName.
	savedDefinition storeInApplication.
	definition storeInApplication.

	self importAllFormInstancesOf: definition. "import data <OrbeonFormInstance> filtered by <definition> version"

	self migrateDefinitionCustomAttachmentOf: definition.
	self migrateDefinitionAttachmentsOf: definition.

	self migrateInstanceAttachmentsOf: definition.