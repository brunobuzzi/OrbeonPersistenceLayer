db update gs objects
updateFormDefinitionNamedButNoData: form app: app version: version
	"The receiver update or create the OrbeonFormDefinition named <form> with version <version> in OrbeonApplication named <app>.
	1. Get the current definition named <form>
	2. If NOT exist then it creates a new defnition and store it in OrbeonApplication named <app>
	3. If already exist then compare the current version with the new one and decide whether or not is necesary another definition.
	4. If is necesary then add the new definition to OrbeonApplication named <app>
	5. If NOT necesary then update the existing one"
	| currentDefinition newDefinition comparator shouldCreateAnotherVersion |

	currentDefinition := self getOrbeonApplicationClass getLastPublishedDefinitionNamed: form fromApplicationNamed: app withVersion: (Integer fromString: version) ifNone: [nil].

	^currentDefinition 
		ifNil: [newDefinition := self importFormDefinitionNamed: form version: version in: app addToApp: true.
			self importFormInstancesOf: newDefinition version: version]
		ifNotNil: [newDefinition := self importFormDefinitionNamed: form version: version in: app addToApp: false.
			comparator := FormDefinitionComparator formOne: currentDefinition formTwo: newDefinition.
			shouldCreateAnotherVersion := comparator shouldCreateAnotherVersion.
			shouldCreateAnotherVersion "is a different form"
				ifTrue: [(self getOrbeonApplicationClass applicationNamed: app) addPublishedDefinition: newDefinition] 
				ifFalse: [ | dbDefnition dbArray |
					dbDefnition := self execute: (sqlReader sqlGetAllFormsDefinition: form of: app version: version after: self getOldTimeStamp).
					dbArray := dbDefnition subStrings: String tab.
					currentDefinition updateFrom: dbArray. "the form is almost the same --> we update the existing one"
					currentDefinition processXMLDefinition.].].