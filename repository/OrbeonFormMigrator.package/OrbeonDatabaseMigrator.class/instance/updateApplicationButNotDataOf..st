db update gs objects
updateApplicationButNotDataOf: anOrbeonApplication
	| formsToMigrate instances |

	instances := OrderedCollection new.
	"get all -triplet- (app, form, version) from Orbeon DataBase"
	formsToMigrate := self getApplicationDefinitionVersionOf: anOrbeonApplication applicationName.

	formsToMigrate do: [:eachAppFormVersion | 
		| resultArray app form version |
		resultArray := eachAppFormVersion subStrings: String tab.
		app := resultArray at: 1. "app"
		form := resultArray at: 2. "form"
		version := resultArray at: 3. "version"
		instances addAll: (self updateFormDefinitionNamedButNoData: form app: app version: version).
	].

	^instances