published definition
getAllInstancesSizeOf: version
	"Answer the number of instances in all versions"

	^(self getAllVersions: version) inject: 0 into:  [:sum :def | sum + def instancesSize]