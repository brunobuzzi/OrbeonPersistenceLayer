published definition
getVersion: versionNumber
	"The receiver answer <anOrbeonPublishedFormDefinition> with version equal to <versionNumber> if there is no version then answer <nil>"

	^currentVersions detect: [:each | each version = versionNumber] ifNone: [nil]