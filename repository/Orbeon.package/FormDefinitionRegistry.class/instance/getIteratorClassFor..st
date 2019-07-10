iterator
getIteratorClassFor: versionNumber
	"The receiver answer a suitable class to iterate over receiver's form instances"

	^(self getDefinitionVersion: versionNumber) hasPermissionsEnabled 
		ifTrue: [FDRegistryIteratorWithPermissons] 
		ifFalse: [FDRegistryIteratorWithoutPermissons]