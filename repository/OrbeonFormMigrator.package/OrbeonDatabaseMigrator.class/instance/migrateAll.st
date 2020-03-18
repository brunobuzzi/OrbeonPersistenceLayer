db migration api
migrateAll
	"Migrate all Definitions and Instances from Orbeon to GemStone/S. This method MUST called only one Time !!!.
	It ignore <application> instance variable and migrate all applications"
	| formsToMigrate |

	"get all -triplet- (app, form, version) from Orbeon DataBase" 
	formsToMigrate := self getAllApplicationDefinitionVersionFromDB.

	formsToMigrate do: [:eachAppFormVersion | | resultArray app form version |
		resultArray := eachAppFormVersion subStrings: String tab.
		app := resultArray at: 1. "app"
		form := resultArray at: 2. "form"
		version := resultArray at: 3. "version"
		"import and create the OrbeonFormDefinition into OrbeonApplication <application>"
		self importNewDefinitionAndDataOf: form version: version application: app addDefToApp: true excludeExistingApp: false.
	]