iterator
getIteratorClass
	"The receiver answer a suitable class to iterate over receiver's form instances"

	^self getLastVersion hasPermissionsEnabled 
		ifTrue: [FDRegistryIteratorWithPermissons] 
		ifFalse: [FDRegistryIteratorWithoutPermissons]