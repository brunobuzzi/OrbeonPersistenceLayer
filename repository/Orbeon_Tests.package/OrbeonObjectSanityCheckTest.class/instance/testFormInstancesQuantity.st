other
testFormInstancesQuantity
	"Test the number of instanes contained in each <OrbeonPublishedFormDefinition> with the number instances contained in general collections"

	(self getOrbeonApplicationClass selectInCache: [:each | each isOrbeonApplication]) do: [:application | 
		application definitionRegistry do: [:formRegistry | 

			"compare instances contained in <oldVersions> & <currentVersions> with instances contained in <instancesSet>"
			self assert: formRegistry getAllInstancesSize equals: formRegistry instancesSet size.

			"compare instances contained in <oldVersions> & <currentVersions> with instances contained in <instancesVersionSet>"
			1 to: formRegistry getLastVersionNumber do: [:versionNumber |
			self assert: (formRegistry getAllInstancesSizeOf: versionNumber) equals: (formRegistry instancesSetOfVersion: versionNumber) size.

			].
		].
	].