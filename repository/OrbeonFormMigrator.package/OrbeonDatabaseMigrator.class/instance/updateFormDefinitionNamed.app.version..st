db migration api
updateFormDefinitionNamed: form app: app version: version
	"The receiver update or create the <anOrbeonFormDefinition> named <form> with version <version> in <OrbeonApplication> named <app>.
	1. Get the current definition named <form>
	2. If NOT exist then it creates a new defnition and store it in OrbeonApplication named <app>
	3. If already exist then compare the current version with the new one and decide whether or not is necesary another definition.
	4. If is necesary then add the new definition to OrbeonApplication named <app>
	5. If NOT necesary then update the existing one"

	^self updateFormDefinitionNamed: form app: app version: version from: self getOldTimeStamp