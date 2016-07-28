published definition
getDefinitionWithSameVersionAs: aFormDefinition
	"The receiver answer anOrbeonFormDefinition with the same version as <aFormDefinition>, checking the <currentVersions> collection"

	^self getDefinitionWithVersion: aFormDefinition version