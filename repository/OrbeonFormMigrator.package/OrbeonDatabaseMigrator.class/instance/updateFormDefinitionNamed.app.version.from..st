db migration api
updateFormDefinitionNamed: form app: app version: version from: stringTimeStamp
	"The receiver update or create the <anOrbeonFormDefinition> named <form> with version <version> in <OrbeonApplication> named <app>.
	1. Get the current definition named <form>
	2. If NOT exist then it creates a new defnition and store it in OrbeonApplication named <app>
	3. If already exist then compare the current version with the new one and decide whether or not is necesary another definition.
	4. If is necesary then add the new definition to OrbeonApplication named <app>
	5. If NOT necesary then update the existing one"
	| application currentDefinition savedDefinition newDefinition comparator shouldCreateAnotherVersion |

	application := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: app.
	currentDefinition := self getOrbeonApplicationClass getLastPublishedDefinitionNamed: form fromApplicationNamed: app withVersion: (Integer fromString: version) ifNone: [nil].
	savedDefinition := self importFormDefinitionNamed: form version: version in: app from: stringTimeStamp.
	newDefinition := savedDefinition definition.

	currentDefinition 
		ifNil: [application addSavedDefinition: newDefinition definition.
				application addPublishedDefinition: newDefinition]
		ifNotNil: [
			comparator := (FormDefinitionComparator formOne: currentDefinition formTwo: newDefinition) compare; yourself.
			shouldCreateAnotherVersion := comparator shouldCreateAnotherVersion.
			shouldCreateAnotherVersion "is a different form"
				ifTrue: [application addPublishedDefinition: newDefinition] 
				ifFalse: [ | dbDefnition dbArray |
					dbDefnition := self execute: (sqlReader sqlGetFormDefinition: form version: (Integer fromString: version) of: app after: stringTimeStamp).
					dbArray := dbDefnition subStrings: String tab.
					currentDefinition updateFrom: dbArray. "the <xmlString> and inst var of the <currentDefinition> definition is update with the latest row of the SQL database"
					currentDefinition processXMLDefinition;
						updateSavedDefinition.
					newDefinition := currentDefinition.].
			].
	self importFormInstancesOf: newDefinition version: version from: stringTimeStamp.

	self migrateDefinitionCustomAttachmentOf: newDefinition.
	self migrateDefinitionAttachmentsOf: newDefinition.
	self migrateInstanceAttachmentsOf: newDefinition.