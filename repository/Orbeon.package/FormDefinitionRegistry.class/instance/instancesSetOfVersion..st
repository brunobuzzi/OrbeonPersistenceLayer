other
instancesSetOfVersion: versionNumber
	"The receiver answer the instance Set for form version <versionNumber>"

	^instancesVersionSet at: versionNumber ifAbsent: [#()]