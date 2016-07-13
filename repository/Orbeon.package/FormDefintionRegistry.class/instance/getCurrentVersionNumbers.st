published definition
getCurrentVersionNumbers
	"Answer a collection with current version number (of each OrbeonFormDefinition)"

	^currentVersions collect: [:each | each version]