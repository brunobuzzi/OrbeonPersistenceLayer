published definition
getAllVersion: versionNumber
	"Answer anArray with all OrbeonFormDefinition that the receiver holds (old + current) "

	^((oldVersions, currentVersions) select: [:each | each version = versionNumber]) asArray