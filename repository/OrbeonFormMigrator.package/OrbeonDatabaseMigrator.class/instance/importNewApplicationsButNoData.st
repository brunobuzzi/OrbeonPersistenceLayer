db import
importNewApplicationsButNoData
	"The receiver perform the first and initial synchronization with the Orbeon relational database.
	Get all applications and synchronize all forms of each application"
	| formsToMigrate newInstances |

	"get all -triplet- (app, form, version) from Orbeon DataBase"
	formsToMigrate := self getAllApplicationDefinitionVersionFromDB.
	newInstances := OrderedCollection new.
	formsToMigrate do: [:eachAppFormVersion | | resultArray app form version |
		resultArray := eachAppFormVersion subStrings: String tab.
		app := resultArray at: 1. "app"
		form := resultArray at: 2. "form"
		version := resultArray at: 3. "version"
		"import and create the OrbeonFormDefinition into OrbeonApplication <application>"
		newInstances addAll: (self importNewDefinition: form version: version application: app addDefToApp: true excludeExistingApp: true).
	].

	^newInstances