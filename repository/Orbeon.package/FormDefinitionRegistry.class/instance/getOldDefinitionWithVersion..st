published definition
getOldDefinitionWithVersion: version
	"The receiver answer anOrbeonFormDefinition with the same version as <aFormDefinition>, checking the <oldVersions> collection"

	^oldVersions detect: [:each | each version = version] ifNone: [nil]