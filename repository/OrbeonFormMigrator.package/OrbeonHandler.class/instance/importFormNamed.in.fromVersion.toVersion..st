import only forms
importFormNamed: formName in: appName fromVersion: startVersion toVersion: toVersion
	"The receiver only import the form definition and forms instances of form named <formName> in application <appName>  (no attachments are imported).
	The version range of import is from <startVersion> to <toVersion>"

	(appName isNil or:[appName isEmpty or:[formName isNil or:[formName isEmpty]]]) 
	ifTrue: [InvalidImportOrbeonDataConfigurationException signal: 'The application name and/or the form name is nil or empty'].

	(startVersion class == SmallInteger and: [toVersion class == SmallInteger and:[(startVersion > 0) and:[toVersion > 0]]])
	ifFalse: [InvalidImportOrbeonDataConfigurationException signal: 'Range Versions must be a valid number'].

	(startVersion > toVersion) 
	ifTrue: [InvalidImportOrbeonDataConfigurationException signal: 'StartVersion can not be greater than ToVersion'].

	startVersion to: toVersion do: [:index |
		self importFormDefinitionNamed: formName version: index in: appName addToApp: true. 
		].

	startVersion to: toVersion do: [:index | | application formDefinition registry |
		application := OrbeonApplication getExistingApplicationOrCreateNewNamed: appName. 
		registry := application registryForFormNamed: formName ifNone: [nil].
		formDefinition := registry getDefinitionWithVersion: index.
		self importDataFromScratchOf: formDefinition.  
		].