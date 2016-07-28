published definition
getDefinitionWithVersion: version
	"The receiver answer anOrbeonFormDefinition with the same version as <aFormDefinition>, checking the <currentVersions> collection"

	^currentVersions detect: [:each | each version = version] ifNone: [nil]