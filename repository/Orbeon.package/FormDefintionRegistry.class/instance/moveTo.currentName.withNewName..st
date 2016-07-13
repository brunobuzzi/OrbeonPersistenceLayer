other
moveTo: applicationName currentName: currentFormName withNewName: formName
	"The receiver is moved to new <OrbeonApplication> named <applicationName> from current form definition named <currentFormName> to the new name <formName>"

	orbeonApplication unregisterDefinitionNamed: currentFormName. "detach from the old <OrbeonApplication> registry"

	orbeonApplication := self getOrbeonApplicationClass getExistingApplicationOrCreateNewNamed: applicationName. "get the new application"

	orbeonApplication setRegistryFormNamed: formName with: self. "atach the receiver to the new application"

	"update the values for the new registry"
	currentVersions do: [:each | each application: orbeonApplication; formName: formName].
	oldVersions do: [:each | each application: orbeonApplication; formName: formName].
	"<savedDefinitions> is aDictionary of collections"
	savedDefinitions do: [:eachCollection | 
		eachCollection do:[:each | each application: orbeonApplication; formName: formName]].