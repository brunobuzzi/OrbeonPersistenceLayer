saved definitions
addSavedDefinition: anOrbeonSavedFormDefinition
	"The receiver add the saved definition (not published yet) <anOrbeonSavedFormDefinition>.
	If there is a previous -instance definition- then remove it and add the new one <anOrbeonSavedFormDefinition>"
	| savedCollection oldSavedVersion |

	savedCollection := savedDefinitions at: anOrbeonSavedFormDefinition id ifAbsentPut: [OrderedCollection new].

	oldSavedVersion := savedCollection detect: [:each | each version = anOrbeonSavedFormDefinition version] ifNone: [^savedCollection add: anOrbeonSavedFormDefinition].

	savedCollection remove: oldSavedVersion 
						ifAbsent: [OrbeonDefinitionNotFoundException signal: 'OrbeonSavedFormDefinition named [', oldSavedVersion formName,'] in app', oldSavedVersion getApplicationName,'] not found'].


	^savedCollection add: anOrbeonSavedFormDefinition