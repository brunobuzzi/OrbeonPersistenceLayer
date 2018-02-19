rename
move: currentSavedFormDefinition toApplication: newAppName andForm: newFormName
	"The receiver relocate the current <currentSavedFormDefinition> to new application named <newApplication> as new form named <newFormName>"
	| currentApplication newApplication |

	currentApplication := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: currentSavedFormDefinition getApplicationName. "current application"
	newApplication := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: newAppName. "get the new application"

	currentApplication unregisterDefinitionNamed: currentSavedFormDefinition formName. "detach the current form name "
	newApplication setRegistryFormNamed: newFormName with: self. "attach the receiver new form name"

	orbeonApplication := newApplication. "set the new application of the receiver"

	"update current published versions"
	currentVersions do: [:each | each application: newApplication; formName: newFormName].

	"update old saved versions"
	oldVersions do: [:each | each application: newApplication; formName: newFormName].

	"(aDictionary of collections) <savedDefinitions> we must only modify the forms with id equal to <currentSavedFormDefinition>"
	(savedDefinitions at: currentSavedFormDefinition id ifAbsent: [OrbeonDefinitionNotFoundException signal: 'OrbeonFormSavedDefinition with id [', currentSavedFormDefinition id ,'] not found'])
		do:[:eachDef | eachDef application: newApplication; formName: newFormName].