sanity checks
checkFormInstancesQuantityFor: aFormDefinitionRegistry

	"compare instances contained in <oldVersions> & <currentVersions> with instances contained in <instancesSet>"
	(aFormDefinitionRegistry getAllInstancesSize = aFormDefinitionRegistry instancesSetSize)
	ifFalse: [OrbeonSanityCheckException signal: 'Form Instance in <oldVersions> & <currentVersions> are different from <instancesSet>'].

	"compare instances contained in <oldVersions> & <currentVersions> with instances contained in <instancesVersionSet>"
	1 to: aFormDefinitionRegistry getLastVersionNumber do: [:versionNumber |
		((aFormDefinitionRegistry getAllInstancesSizeOf: versionNumber) = (aFormDefinitionRegistry instancesSetOfVersion: versionNumber) size)
		ifFalse: [OrbeonSanityCheckException signal: 'Form Instance in <oldVersions> & <currentVersions> are different from <instancesSet>'].
	].